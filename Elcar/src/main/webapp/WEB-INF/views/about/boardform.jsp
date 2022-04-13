<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/ckeditor/ckeditor.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>

<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg" style="margin-bottom: 40px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Board Write</h2>
						<div class="breadcrumb__links">
							<a href="boardlist"><i class="fa fa-home"></i> Board</a> <span>write
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	
	
		<section style="height: 1000px; width: 900px; margin: auto;">
			<div class="container" style="text-align: center;">
				<!-- /.page-header -->

				<div class="row">
					<div class="container">
						<!-- PAGE CONTENT BEGINS -->

						<form action="write" method="post">
						<div class="" style="margin-top: 30px;">


							<label class="col-sm-6" for="form-field-1-1"> <h4>제목</h4> </label>

							<div class="">
								<input type="text" id="form-field-1-1" class="form-control"
									name='title'  />
							</div>


							<label class="col-sm-6" for="form-field-1-1"
								style="margin-top: 30px;"> <h4>작성자</h4> </label>

							<div class="">
								<input type="text" id="form-field-1-1" class="form-control"
									name='mem_id'   value="${id}"readonly="readonly" />
							</div>




							<label class="col-sm-6" for="form-field-1-1"
								style="margin-top: 30px;"> <h4>타입</h4> </label>

							<div class="">
									<input type="radio" name="type" id="type1" autocomplete="off"
										required value="1" checked style="margin-right: 5px;">자유
			    <input type="radio" name="type" id="type2" autocomplete="off"
										required value="2"
										style="margin-left: 30px; margin-right: 5px;">후기
							</div>
							
							<div id="location" style=display:none>
							<label class="col-sm-6" for="form-field-1-1"
								style="margin-top: 30px;"> <h4>지역</h4> </label>
								<div>
				<input type="text" id="form-field-1-1" class="form-control"	name='location' />
			</div>
			</div>

						</div>

						<div class="" style="margin-top: 30px;">
							<div class="">
								<!-- PAGE CONTENT BEGINS -->
								<h4 class="header blue clearfix" style="margin-bottom: 10px;">CONTENT</h4>

								<textarea id="editor4" name="content">
									</textarea>
								<script>
									 CKEDITOR.replace('editor4');
						 			</script>

								<%-- <textarea class="form-control" rows="10" name='content'
										readonly="readonly"><c:out
											value="${board.content }" /></textarea> --%>



								<div class="hr hr-double dotted"></div>



								<!-- PAGE CONTENT ENDS -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->

						<div style="margin-top: 30px; float: right">
							<input type="submit" class="btn btn-white btn-warning"
								data-oper='list' value="등록하기" />
						</div>
						</form>
		<div style="margin-top: 30px; position: absolute;">
			<input type="button" onclick="location.href='/boardlist'"
				value="LIST" class="btn btn-white btn-primary" data-oper='list'>
		</div>

</div>
</div>
</div>


	</section>
	
</body>
<script>
$(document).ready(function(){
	 
    // 라디오버튼 클릭시 이벤트 발생
    $("input:radio[name=type]").click(function(){
 
        if($("input:radio[name=type]:checked").val() == "2"){
            $("#location").css("display","block");
            // radio 버튼의 value 값이 1이라면 활성화
 
        }else if($("input:radio[name=type]:checked").val() == "1"){
        	$("#location").css("display","none");
            // radio 버튼의 value 값이 0이라면 비활성화
        }
    });
});
</script>
</html>