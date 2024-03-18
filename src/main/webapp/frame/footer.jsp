<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<footer>
	<div id="siteMap">
		<select id="site-select">
			<option value="">사이트 선택...</option>
			<option value="https://www.google.com">Google</option>
			<option value="https://www.naver.com">Naver</option>
			<option value="https://www.daum.net">Daum</option>
		</select>
		<button onclick="goToSite()">이동</button>
	</div>
	<div class="sns_list">
		<strong class="tit">여행 후기를 SNS에 남겨주세요!</strong>
		<ul>
			<li><a href="http://blog.naver.com" target="_blank" title="새창">
					<span class="icon icon_blog"></span> <em class="sns_name">네이버
						블로그</em>
			</a></li>
			<li><a href="http://post.naver.com" target="_blank" title="새창">
					<span class="icon icon_post"></span> <em class="sns_name">포스트</em>
			</a></li>
			<li><a href="https://band.us" target="_blank" title="새창"> <span
					class="icon icon_band"></span> <em class="sns_name">네이버<br />밴드
				</em>
			</a></li>
			<li><a href="https://www.facebook.com" target="_blank"
				title="새창"> <span class="icon icon_facebook"></span> <em
					class="sns_name">페이스북</em>
			</a></li>
			<li><a href="https://twitter.com" target="_blank" title="새창">
					<span class="icon icon_twitter"></span> <em class="sns_name">엑스</em>
			</a></li>
			<li><a href="https://story.kakao.com" target="_blank" title="새창">
					<span class="icon icon_kakaostory"></span> <em class="sns_name">카카오<br />스토리
				</em>
			</a></li>
			<li><a href="https://www.instagram.com" target="_blank"
				title="새창"> <span class="icon icon_instagram"></span> <em
					class="sns_name">인스타<br />그램
				</em>
			</a></li>
		</ul>
	</div>
	<hr />
	<br>
	<div>
		<ul class="btm_menu">
			<li><a href="javascript:" onclick="goTerm(1);"
				class="personal_info">개인정보처리방침</a></li>
			<li><a href="javascript:" onclick="goTerm(2);">이용약관</a></li>
			<!-- 0703 추가 -->
			<li><a href="javascript:" onclick="goTerm(3);">위치기반서비스 이용약관</a></li>
			<!-- 0717 추가 -->
			<li><a href="" target="_blank" title="새창">저작권정책</a></li>
			<li><a href="" target="_blank" title="새창">고객서비스헌장</a></li>
			<li><a href="" target="_blank" title="새창">전자우편무단수집거부</a></li>
			<li><a href="javascript:" onclick="goQA();" title="페이지이동">Q&amp;A</a></li>
			<li><a href="" target="_blank" title="새창">찾아오시는 길</a></li>
		</ul>
	</div>
	<br>
	<hr />
	<div class="badak">
		<p>
			미니프로젝트 <a href="https://naver.com">naver_cloud_camp</a>
		</p>
		<div>
			<a href="https://api.visitkorea.or.kr/#/" target="_blank" title="새창"><img
				src="./css/image/Tour_api.png" alt="TourAPI 4.0"></a>
		</div>
	</div>
</footer>
