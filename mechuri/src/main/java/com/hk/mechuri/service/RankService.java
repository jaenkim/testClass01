package com.hk.mechuri.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.mechuri.daos.iRankDao;
import com.hk.mechuri.dtos.filterDto;
import com.hk.mechuri.dtos.ingreDto;
import com.hk.mechuri.dtos.productDto;
import com.hk.mechuri.dtos.reviewDto;

@Service
public class RankService implements iRankService {
	
	@Autowired
	private iRankDao rankDao;
	
	//전체 상품의 랭링 목록을 출력함
	@Override
	public List<productDto> getAllProductList(){
		return rankDao.getAllProductList();
	}
	
	@Override
	public List<productDto> getFilterProductList(filterDto dto){
		System.out.println("service에서 출력한 10대의 값: ["+dto.getFilter_age10()+"]");
		System.out.println("service에서 출력한 카테고리 대분류대의 값: ["+dto.getFilter_catelname()+"]");
		System.out.println("service에서 출력한 카테고리 소분류대의 값: ["+dto.getFilter_catesname()+"]");
		return rankDao.getFilterProductList(dto);
	}

	
	@Override
	public productDto getDetailProductList(int product_no) {
		System.out.println("서비스의 제품상세보기 메서드에서 출력해보는 제품번호 매개변수 ["+product_no+"]");
		return rankDao.getDetailProductList(product_no);
	}
	@Override
	public reviewDto getDetailPoint(int product_no) {	
		return rankDao.getDetailPoint(product_no);
	}
	@Override
	public List<reviewDto> getProductReview(int product_no) {
		System.out.println("서비스의 리뷰 전체보기 메서드에서 출력해보는 제품번호 매개변수 ["+product_no+"]");
		return rankDao.getProductReview(product_no);
	}
	@Override
	public List<ingreDto> getProductIngre(productDto pDto) {
		return rankDao.getProductIngre(pDto);
	}

	@Override
	public List<productDto> getAllProductListbyHighprice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<productDto> getAllProductListbyLowprice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<productDto> getAllProductListbyASCname() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<productDto> getAllProductListbyMaxReview() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<productDto> getAllProductListbyMinReview() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
}
