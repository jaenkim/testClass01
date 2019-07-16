package com.hk.mechuri;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hk.mechuri.dtos.boardDto;
import com.hk.mechuri.dtos.replyDto;
import com.hk.mechuri.service.IBoardService;

@Controller
public class SController {
	
	private static final Logger logger = LoggerFactory.getLogger(SController.class);
	
	@Autowired
	private IBoardService boardService;

	//여기부터 커뮤니티 기능                    
	@RequestMapping(value = "/boardlist2.do") /*커뮤니티리스트*/
	public String boardlist2(Locale locale, Model model,HttpServletRequest request) {
		System.out.println("여기도 안들어오나");
	//	System.out.println("pnum=["+request.getParameter("pnum")+"]");
		String board_pnum = request.getParameter("board_pnum");  //페이징
		//request.getSession().removeAttribute("readcount");
		if(board_pnum==null) {
			board_pnum="1";//1페이지로 기본세팅
			List<boardDto> list=boardService.getAllList(board_pnum);
			int pcount = boardService.getPcount(); //총 페이지 수			
			model.addAttribute("list",list);
			model.addAttribute("pcount",pcount);
			
		} else {
			
		//pnum="1";//1페이지로 기본세팅
		List<boardDto> list=boardService.getAllList(board_pnum);
		int pcount = boardService.getPcount(); //총 페이지 수	
		
		System.out.println("최신글 뉴=["+list.get(0).getBoard_new()+"]");
		
		model.addAttribute("list",list);
		System.out.println("pcount=["+pcount+"]");
		model.addAttribute("pcount",pcount);
		}
		return "community/boardlist2";
	}
	
	@RequestMapping(value = "/boardwrite.do") /*글작성 폼으로 이동*/
	public String boardwrite(Locale locale, Model model) {	
		return "insertWrite";
	}
	
	
	@RequestMapping(value = "/insertWrite.do") /*커뮤니티 글 작성*/
	public String insertWrite(Locale locale, Model model, HttpServletRequest request) {	
		logger.info("글 추가하기 {}.", locale);
		System.out.println("컨트롤러 파일=["+request.getParameter("filename")+"]");
		String nick = request.getParameter("nickname");
		String title = request.getParameter("titlename");
		String content = request.getParameter("content");
		
		boardDto dto1 = new boardDto(nick,title,content);
		
	
		//파일업로드
		boolean isS = boardService.insertFileInfo(request, dto1);
		System.out.println();
		if(isS) {
			return "redirect:boardlist2.do";
		} else {
			
			return "redirect:boardlist2.do";
		}
		
	}
	
	
	@RequestMapping(value = "/boardDetail.do") /*글 상세보기 폼으로 이동*/
	public String boardDetail(HttpServletRequest request,Locale locale, Model model, Integer board_no) {	
		logger.info("게시글 상세보기 {}.", locale);
		System.out.println("board_no["+board_no+"]");
		//String pnum = request.getParameter("pnum");
		String rCount = (String)request.getSession().getAttribute("readcount");
		if(rCount==null) {
			boardService.readCount(board_no);
			request.getSession().setAttribute("readcount", board_no+"");
		} else {
			
		}
		
		boardDto dto=boardService.getBoard(board_no); //게시글
		List<replyDto> replylist = boardService.replyDetail(board_no); //해당 게시글의 댓글
		
		
		model.addAttribute("dto",dto); //게시글 화면출력
		model.addAttribute("replylist",replylist); //댓글화면출력
		
		
		return "community/boarddetail";
	}
	
	
	
	@RequestMapping(value = "/boardDelete.do") /* 삭제 */
	public String boardDelete(Locale locale, Model model, int board_no) {	
		logger.info("상세보기 글 삭제 {}.", locale);	
		
		boolean isS=boardService.delBoard(board_no);
		if(isS) {
			return "redirect:boardlist2.do";
		} else {
			model.addAttribute("msg","글삭제실패");
			return "community/boarddetail";
		}	
	}
	
	
	
	@RequestMapping(value = "/updateForm.do") /*상세글 업데이트폼으로 가기*/
	public String updateForm(Locale locale, Model model,int board_no) {	
		logger.info("게시글 수정하기 폼 이동 {}.", locale);
		System.out.println("업데이트 컨트롤러 board_no=["+board_no+"]");
		boardDto dto=boardService.getBoard(board_no);
		model.addAttribute("dto",dto);
		
		return "community/boardupdate";
	}
	
	
	
	@RequestMapping(value = "/updateBoard.do") /*커뮤니티 상세글 업데이트*/
	public String updateBoard(HttpServletRequest request, Locale locale, Model model,boardDto dto) {	
		logger.info("게시글 수정하기 {}.", locale);
		
		System.out.println("컨트롤러업데이트보드리쿼스트=["+request+"");
		boolean isS = boardService.updateBoard(request);
		System.out.println("컨트롤러업데이트[-"+isS+"]");
		if(isS) {
			System.out.println("컨트롤러업데이트IF안[-"+isS+"]");
			return "redirect:boardDetail.do?board_no="+dto.getBoard_no();
			
		} else {
			model.addAttribute("msg","글 수정 실패");
			return "community/boardupdate";
		}
	}
	
	
	
	@RequestMapping(value = "/replyboard.do") /*댓글 추가작업 컨트롤러*/
	public String replyboard(HttpServletRequest request,Locale locale, Model model, replyDto dto,Integer reply_no,Integer board_no) {	
		logger.info("답글 추가하기 {}.", locale);
		
		dto.setReply_nick(request.getParameter("reply_nick"));
		dto.setReply_conts(request.getParameter("reply_contents"));
		dto.setReply_communo(board_no);
		System.out.println("댓글 글번호 컨트롤러 isS위=["+dto.getReply_communo()+"]");
		boolean isS = boardService.replyBoard(dto);
		System.out.println("댓글 글번호 컨트롤러 isS아래=["+dto.getReply_communo()+"]");
		if(isS) {
			System.out.println("댓글 글번호 컨트롤러 IF안=["+dto.getReply_communo()+"]");
			return "redirect:boardDetail.do?board_no="+board_no;
		} else {
			return "community/boarddetail";
		}
	}
	
	

	
	
	
	
	
	
	
}
