<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/main2.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/listSideNav.css">
<!-- <link rel="stylesheet" href="assets/css/starRating.css"> -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap&subset=korean" rel="stylesheet">
  <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function delReview(clickBtn) {
			var productNo = $("#productNo").val();
			var ingre = $("#ingre").val();
			var reviewNo = $("#reviewNo").val();
			var reviewNick = $("#reviewNick").val();
		
			$.ajax({
				type : "POST",
				url : "./deleteReview.do",
				data : {"productNo":productNo,"ingre":ingre,"reviewNo":reviewNo,"reviewNick":reviewNick},
				async : true,
				success : function(msg) {
					alert("회원님의 리뷰가 삭제되었습니다.");
					$(clickBtn).parent().parent().remove();
				},
				error: function(msg){
 					alert("본인의 리뷰만 삭제가 가능합니다.");
				}
			});
		}
	</script>
<title>${proInfo.product_name} :: 메추리 랭킹</title>
</head>
<body>
<jsp:include page="../Header.jsp" /> 
<section id="main" class="wrapper">
				<div class="inner">
					<header class="align-center">
						<h1>Generic Page</h1>
						<p>Lorem ipsum dolor sit amet nullam id egestas urna aliquam</p>
					</header>
<!-- 제품상세 -->
<table border='1' style="background-color: #ffffff;">
	<tr>
		<td>${proInfo.product_rank}</td> <!-- 제품 순위 -->
		<td>${proInfo.product_brand}</td> <!-- 제품 브랜드 -->
	</tr>
	<tr>
		<td rowspan="5">사진</td> <!-- 제품 이미지 -->
		<td>${proInfo.product_name} <input type="button" value="${proInfo.product_catelname} &#47; ${proInfo.product_catesname}" class="btn btn-light" /></td> <!-- 제품명 제품카테고리(버튼 > 브랜드 상세페이지 이동) -->
	</tr>
	<tr>
		<td>용량: ${proInfo.product_ml} &#47; 정가: ${proInfo.product_price}<p><a href="https://search.shopping.naver.com/search/all.nhn?query=${proInfo.product_name}&cat_id=&frm=NVSHATC" >최저가격 확인하기</a></td>
	</tr>
	<tr>
		<td><img src="images/productPoint/point_${proInfo.product_point }.png" alt="이미지"> &#47; ${proInfo.product_point } &#47; ${proInfo.product_pointcount } </td>
	</tr>
	<tr> 
		<td><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">성분 상세보기 ></button></td>
	</tr>
	<tr> 
		<td>${proInfo.product_conts}</td>
	</tr>
	<tr>
	<td>
	<div>
		<span class="heading">별점</span> 
<%-- 		<c:choose> --%>
<%-- 			<c:when test="${proInfo.product_point == 0 }" > --%>
				<img src="images/productPoint/point_0.png" alt="0점">
<%-- 			</c:when> --%>
<%-- 			<c:when test="${0.00000001 < proInfo.product_point < 0.99999999}" > --%>
<!-- 				<img src="images/productPoint/point_05.png" alt="0점"> -->
<%-- 			</c:when> --%>
<%-- 			<c:otherwise> --%>
<!-- 				<img src="images/productPoint/point_3.png" alt="0점"> -->
<%-- 			</c:otherwise> --%>
<%-- 		</c:choose> --%>
		
		
		<p>별점 평균: ${proInfo.product_point } 별점 준 사람 수: ${proInfo.product_pointcount }</p>
	</div>
	</td>
	<td>
	<div>
		
			<div class="progress">
			<c:choose>
				<c:when test="${detailReview.rev1count == null}">
					<div class="progress-bar" style="width: 0%">0%</div>
				</c:when>
				<c:otherwise>
					<div class="progress-bar" style="width: ${(detailReview.rev1count/proInfo.product_pointcount)*100}%"><fmt:formatNumber value="${(detailReview.rev1count/proInfo.product_pointcount)*100}" pattern=".0" />%</div>
				</c:otherwise>
			</c:choose>
			</div>
			<p>1점(<fmt:parseNumber value="${detailReview.rev1count}" integerOnly="true" />명)</p>
		
		<div class="progress">
			<c:choose>
				<c:when test="${ detailReview.rev2count == null}">
					<div class="progress-bar" style="width: 0%">0%</div>
				</c:when>
				<c:otherwise>
					<div class="progress-bar" style="width: ${(detailReview.rev2count/proInfo.product_pointcount)*100}%"><fmt:formatNumber value="${(detailReview.rev2count/proInfo.product_pointcount)*100}" pattern=".0" />%</div>
				</c:otherwise>
			</c:choose>
		</div>
		<p>2점(<fmt:parseNumber value="${detailReview.rev2count}" integerOnly="true" />명)</p>
		<div class="progress">
			<c:choose>
				<c:when test="${ detailReview.rev3count == null}">
					<div class="progress-bar" style="width: 0%">0%</div>
				</c:when>
				<c:otherwise>
					<div class="progress-bar" style="width: ${(detailReview.rev3count/proInfo.product_pointcount)*100}%"><fmt:formatNumber value="${(detailReview.rev3count/proInfo.product_pointcount)*100}" pattern=".0" />%</div>
				</c:otherwise>
			</c:choose>
		</div>
		<p>3점(<fmt:parseNumber value="${detailReview.rev3count}" integerOnly="true" />명)</p>
		<div class="progress">
			<c:choose>
				<c:when test="${ detailReview.rev4count == null}">
					<div class="progress-bar" style="width: 0%">0%</div>
				</c:when>
				<c:otherwise>
					<div class="progress-bar" style="width: ${(detailReview.rev4count/proInfo.product_pointcount)*100}%"><fmt:formatNumber value="${(detailReview.rev4count/proInfo.product_pointcount)*100}" pattern=".0" />%</div>
				</c:otherwise>
			</c:choose>
		</div>
		<p>4점(<fmt:parseNumber value="${detailReview.rev5count}" integerOnly="true" />명)</p>
		<div class="progress">
			<c:choose>
				<c:when test="${ detailReview.rev5count == null}">
					<div class="progress-bar" style="width: 0%">0%</div>
				</c:when>
				<c:otherwise>
					<div class="progress-bar" style="width: ${(detailReview.rev5count/proInfo.product_pointcount)*100}%"><fmt:formatNumber value="${(detailReview.rev5count/proInfo.product_pointcount)*100}" pattern=".0" />%</div>
				</c:otherwise>																							
			</c:choose>
		</div>
		<p>5점(${detailReview.rev5count}명)</p>
	</div>
	</td>
	</tr>
	</table>
	
	
	<!-- 리뷰 작성하기 버튼 -->
	<div>
		<button class="reviewBtn" onclick="location.href='reviewpage.do?pNo=${proInfo.product_no}&ingre=${callbackReview}'" >리뷰 작성하기</button>
	</div>
	
	
	<!-- 리뷰 목록 -->
	
	<table border="1">
		<tr>
		<th>리뷰번호</th>
		<th>리뷰작성자 닉네임</th>
		<th>리뷰 내용</th>
		<th>별점</th>
		<th>사진</th>
		<th>리뷰 작성일</th>
		<th>삭제</th>
		</tr>
		<c:forEach items="${reviewInfo}" var="reviewInfo">
<!-- 		<form action="deleteReview.do" > -->
			<input type="hidden" id="productNo" value="${proInfo.product_no}" />
			<input type="hidden" id="ingre" value="${callbackReview}" />
			<input type="hidden" id="reviewNo" value="${reviewInfo.review_no}" />
			<input type="hidden" id="reviewNick" value="${review_nick}" />
			<tr>
				<td>${reviewInfo.review_no}</td>
				<td>${reviewInfo.review_nick }</td>
				<td>${reviewInfo.review_conts }</td>
				<td>${reviewInfo.review_point }</td>
				<td><img src="upload/${reviewInfo.review_storedfile}" alt="이미지"></td>
				<td>${reviewInfo.review_regdate }</td>
				<td>
<%-- 					<input type="button" value="x" id="delReviewBtn" onclick="delReview(this)" ${naverNickname eq reviewInfo.review_nick?"":"style='display:none'"} /> --%>
					<c:choose>
						<c:when test="${naverNickname!=null}">
							<input type="button" value="x" id="delReviewBtn" onclick="delReview(this)" ${naverNickname eq reviewInfo.review_nick?"":"style='display:none'"}  />
						</c:when>
						<c:when test="${mem_nick!=null}">
							<input type="button" value="x" id="delReviewBtn" onclick="delReview(this)" ${mem_nick eq reviewInfo.review_nick?"":"style='display:none'"}  />
						</c:when>
						<c:otherwise>
						
						</c:otherwise>
					</c:choose>
					
				</td>
			</tr>
<!-- 		</form> -->
		</c:forEach>
	</table>


 <!-- 성분 Modal -->
		<div class="modal fade" id="myModal" role="dialog" style="height: 60%; top:20%;">
			<div class="modal-dialog">

				<!-- 성분 Modal content-->
				<div class="modal-content"  >
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h2 class="modal-title" style="text-align: center;">성분정보</h4>
					</div>
					<div class="modal-body" >
					<div>
						<table>
							<tr>
								<td rowspan="3" style="width: 20%; height: 10px;" ></td>
								<td rowspan="3" style="width: 40%;">${proInfo.product_name }</td>
								<td style="width: 40%;">${proInfo.product_brand}</td>
							</tr>
							<tr>
								<td>${proInfo.product_name }</td>
							</tr>
							<tr>
								<td>${proInfo.product_ml}/${proInfo.product_price}</td>
							</tr>
						</table>
							<hr>
						<table>
							<tr>
								<td style="text-align: center;">해당 제품의 전성분에 대한 EWG 안전도 등급입니다.</td>
							</tr>
							<tr>
								<td style="text-align: center;">
									<img src="images/ingre/ingre_dangernone.png" alt="등급미정">등급미정
									<img src="images/ingre/ingre_dangerlow.png" alt="낮은 위험도">낮은	위험도
									<img src="images/ingre/ingre_dangermiddle.png" alt="중간 위험도">중간 위험도
									<img src="images/ingre/ingre_dangerhigh.png" alt="높은 위험도">높은 위험도
								</td>
							</tr>
						</table>
					</div>
					<div>
							<table border='1'>
								<c:forEach items="${ingreInfo}" var="ingreInfo">
									<tbody>
									<tr>
										<td  style="text-align: center;"><img src="images/ingre/ingre_${ingreInfo.ingre_grade}.png" alt="위험도"></td>
										<td>
											<p>${ingreInfo.ingre_korname}</p>
											<p>${ingreInfo.ingre_engname}</p>
											<p>${ingreInfo.ingre_conts}</p> 
											<c:choose>
												<c:when test="${ingreInfo.ingre_20conts != null}">
													<img src="images/ingre/ingre_20.png" alt="20가지 주의성분"> 20가지 주의성분 포함 | ${ingreInfo.ingre_20conts}</p>
										 		</c:when>
												<c:otherwise>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${ingreInfo.ingre_skintype != null}">
													<img src="images/ingre/ingre_skin.png" alt="도움되는 피부타입"> ${ingreInfo.ingre_skintype}에 도움
	          									</c:when>
												<c:otherwise>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
									</tbody>
								</c:forEach>
							</table>
						</div>
					</div>



					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>


	</div>
 </section>
 <jsp:include page="../Footer.jsp" />
</body>
</html>