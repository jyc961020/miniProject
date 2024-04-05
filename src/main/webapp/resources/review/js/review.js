
//reviewWrite 

//reviewContent  summernote start 
$(document).ready(function() {
	$('#summernote').summernote({
		placeholder: '내용을 작성하세요',
		height: 1000,
		maxheight: 1000,
		minheight: 1000,
		lang: "ko-KR",
		toolbar: [
			['style', ['style']], // 글자 스타일 설정 옵션
			['fontsize', ['fontsize']], // 글꼴 크기 설정 옵션
			['font', ['bold', 'underline', 'clear']], // 글자 굵게, 밑줄, 포맷 제거 옵션
			['color', ['color']], // 글자 색상 설정 옵션
			['para', ['ul', 'ol', 'paragraph']], // 문단 스타일, 순서 없는 목록, 순서 있는 목록 옵션
			['insert', ['picture']], // 이미지 삽입, 링크 삽입, 동영상 삽입 옵션
			['view', ['fullscreen', 'help']], // 코드 보기, 전체 화면, 도움말 옵션
		],

		fontSizes: [
			'8', '9', '10', '11', '12', '14', '16', '18',
			'20', '22', '24', '28', '30', '36', '50', '72',
		], // 글꼴 크기 옵션

		styleTags: [
			'p',  // 일반 문단 스타일 옵션
			{
				title: 'Blockquote',
				tag: 'blockquote',
				className: 'blockquote',
				value: 'blockquote',
			},  // 인용구 스타일 옵션
			'pre',  // 코드 단락 스타일 옵션
			{
				title: 'code_light',
				tag: 'pre',
				className: 'code_light',
				value: 'pre',
			},  // 밝은 코드 스타일 옵션
			{
				title: 'code_dark',
				tag: 'pre',
				className: 'code_dark',
				value: 'pre',
			},  // 어두운 코드 스타일 옵션
			'h1', 'h2', 'h3', 'h4', 'h5', 'h6'  // 제목 스타일 옵션
		]

	});
});
//-End summernote config

//-Comment 동적 생성
//comment 틀 생성
function createComment(imageURL, USERID, commentContent, commentDate) {

	var result = `<tr>
					<td colspan="2" style='padding:10px'></td>
				  </tr>
					<tr>
					<td rowspan="4" id="imgTd"> <img src="`
		+ imageURL +
				 `" alt="이미지"> </td>
				  </tr>
				  
				  <tr>
				  	<td colspan="2">작성자 :
				  		<span id="commentUserId">`
		+ USERID +
		`</span>
					</td>
				  </tr>
				  
				  <tr>
					<td colspan="2">
						<span id="commentContent">`
		+ commentContent +
		`</span>
					</td>
				  </tr>
				  <tr>
					<td colspan="2" >
						<span id="commentDate">`
		+ commentDate +
		`</span>
					</td>
				  </tr>
				  <tr id="commentTr">
					<td colspan="2" style='padding:10px'></td>
				  </tr>`

	$('#commentConsole #commentTable').append(result);

}



//틀 생성 종료


$("#commentBtn").click(function() {
	let today = new Date();
	
	var comment = $("#commentText").val();
	var imageURL = '../icon/like.png';
	var USERID = $('#commentWrite #userID').val();
	var commentDate = today;
	if (comment == "") {
		alert("댓글을 입력해주세요");
		return false;
	} else (


		createComment(imageURL, USERID, comment, commentDate)

	)
})


//- End Comment