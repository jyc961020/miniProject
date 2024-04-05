<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>여행 후기 게시판</title>

<link rel="stylesheet" type="text/css" href="../../resources/frame/css/frame.css">
<link rel="stylesheet" type="text/css" href="../../resources/review/css/reviewlist.css">
<style>
</style>
</head>

<body>


	<header><jsp:include page="../frame/header.jsp"></jsp:include></header>

	<div id="frameContent">
		<div id="frameNav"><jsp:include page="../frame/nav.jsp"></jsp:include></div>
		<div id="content">

			<!-- reviewList -->

			<div id="reviewList" class="reviewList">

				<div id="reviewListMain">
					<div id="reviewListHeader">
						<h1>R E V I E W</h1>
					</div>

					<div class="reviewListItem">
						<table>
							<tr>
								<td colspan="5" ><span id="reviewListImg"><img
									src="../../resources/review/image/KakaoTalk_Photo_2024-02-28-21-46-04%20001.jpeg"
									alt="고양이 사진" /></span></td>
							</tr>
							<tr>
								<td colspan="5">
									<hr>
									<a href="review.jsp" id="title">안녕하세요 리스트입니다.</a>
									<input type="hidden" name="reviewSeq" id="reviewSeq" value="reviewSeq"/>
								</td>
							</tr>
							<tr>
								<td>작성자</td>
								<td colspan="4" id="userId">HELLDIVER</td>
							</tr>

							<tr>
								<td id="date">24.03.09</td>
								<td>조회수</td>
								<td id="view">10</td>
								<td><img src="../../resources/review/icon/comment.png"><span id="commentCount">5</span></td>
								<td><img src="../../resources/review/icon/like.png"><span id="like">3</span></td>
							</tr>
						</table>
					</div>
					<div class="reviewListItem">
						<table>
							<tr>
								<td colspan="5"><img
									src="../../resources/review/image/KakaoTalk_Photo_2024-02-28-21-46-04%20002.jpeg"
									alt="고양이 사진" /></td>
							</tr>
							<tr>
								<td colspan="5">
									<hr>안녕하세요 리스트입니다.
								</td>
							</tr>
							<tr>
								<td>작성자</td>
								<td colspan="4">HELLDIVER</td>
							</tr>

							<tr>
								<td>24.03.09</td>
								<td>조회수</td>
								<td>10</td>
								<td><img src="../../resources/review/icon/comment.png">5</td>
								<td><img src="../../resources/review/icon/like.png">3</td>
							</tr>
						</table>
					</div>
					<div class="reviewListItem">
						<table>
							<tr>
								<td colspan="5"><img
									src="../../resources/review/image/KakaoTalk_Photo_2024-02-28-21-46-04%20003.jpeg"
									alt="고양이 사진" /></td>
							</tr>

							<td colspan="5">
								<hr>안녕하세요 리스트입니다.
							</td>
							</tr>
							<tr>
								<td>작성자</td>
								<td colspan="4">HELLDIVER</td>
							</tr>

							<tr>
								<td>24.03.09</td>
								<td>조회수</td>
								<td>10</td>
								<td><img src="../../resources/review/icon/comment.png">5</td>
								<td><img src="../../resources/review/icon/like.png">3</td>
							</tr>
						</table>
					</div>

					<div class="reviewListItem">
						<table>
							<tr>
								<td colspan="5"><img
									src="../../resources/review/image/KakaoTalk_Photo_2024-02-28-21-46-05%20004.jpeg"
									alt="고양이 사진" /></td>
							</tr>

							<td colspan="5">
								<hr>안녕하세요 리스트입니다.
							</td>
							</tr>
							<tr>
								<td>작성자</td>
								<td colspan="4">HELLDIVER</td>
							</tr>

							<tr>
								<td>24.03.09</td>
								<td>조회수</td>
								<td>10</td>
								<td><img src="../../resources/review/icon/comment.png">5</td>
								<td><img src="../../resources/review/icon/like.png">3</td>
							</tr>
						</table>
					</div>
					<div class="reviewListItem">
						<table>
							<tr>
								<td colspan="5"><img
									src="../../resources/review/image/KakaoTalk_Photo_2024-02-28-21-46-05%20005.jpeg"
									alt="고양이 사진" /></td>
							</tr>

							<td colspan="5">
								<hr>안녕하세요 리스트입니다.
							</td>
							</tr>
							<tr>
								<td>작성자</td>
								<td colspan="4">HELLDIVER</td>
							</tr>

							<tr>
								<td>24.03.09</td>
								<td>조회수</td>
								<td>10</td>
								<td><img src="../../resources/review/icon/comment.png">5</td>
								<td><img src="../../resources/review/icon/like.png">3</td>
							</tr>
						</table>
					</div>
					<div class="reviewListItem">
						<table>
							<tr>
								<td colspan="5"><img
									src="../../resources/review/image/KakaoTalk_Photo_2024-02-28-21-46-05%20007.jpeg"
									alt="고양이 사진" /></td>
							</tr>

							<td colspan="5">
								<hr>안녕하세요 리스트입니다.
							</td>
							</tr>
							<tr>
								<td>작성자</td>
								<td colspan="4">HELLDIVER</td>
							</tr>

							<tr>
								<td>24.03.09</td>
								<td>조회수</td>
								<td>10</td>
								<td><img src="../../resources/review/icon/comment.png">5</td>
								<td><img src="../../resources/review/icon/like.png">3</td>
							</tr>
						</table>
					</div>

				</div>


				<div id="reviewListFoot">
					<div id="reviewListPage">
						<button>이전</button>
						<a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
						<button>다음</button>
					</div>
					<div id="reviewListWrite">
						<button id="reviewListWriteBtn">글쓰기</button>
					</div>
				</div>



			</div>
			<!-- reviewList end -->
		</div>
	</div>
	<div id="upDownBtn">
		<a href="#"><button id="upBtn">위로</button></a> <a href="#bottom"><button
				id="downBtn">아래</button></a>
	</div>
	<footer><jsp:include page="../frame/footer.jsp"></jsp:include></footer>
	<div id="bottom"></div>




	<script src="http://code.jQuery.com/jquery-3.7.1.min.js"></script>
	<script src="../../resources/frame/js/frame.js"></script>
	

</body>

</html>