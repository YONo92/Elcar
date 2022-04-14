<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/ckeditor/ckeditor.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script></head>
<style>
.cke_top{
display:none;
}
.cke_bottom{
display:none;
}
</style>
<body>

<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg" style="margin-bottom: 40px">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Board Detail</h2>
						<div class="breadcrumb__links">
							<a href="boardlist"><i class="fa fa-home"></i> Board</a> <span>detail</span>
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

						<input type="text" name="num" style="display:none" value="${board.num }">
						<div class="" style="margin-top: 30px;">


							<label class="col-sm-6" for="form-field-1-1"> <h4>제목</h4> </label>

							<div class="">
								<input type="text" id="form-field-1-1" class="form-control"
									name='title' value="${board.title }" readonly style=" text-align: center; background-color:white; border-radius: 40px;"/>
							</div>


							<label class="col-sm-6" for="form-field-1-1"
								style="margin-top: 30px;"> <h4>작성자</h4> </label>

							<div class="">
								<input type="text" id="form-field-1-1" class="form-control"
									name='mem_id' value="${board.mem_id }" readonly style=" text-align: center;background-color:white; border-radius: 40px;"/>
							</div>





							<%-- <div class="" style="display:none">
								<input type="text" id="form-field-1-1" class="form-control"
										name='writer' value='<c:out value="${board.writer }"/>'
										readonly="readonly" />
								<c:if test="${board.type eq '1'}">
									<input type="radio" name="type" id="type1" autocomplete="off"
										required value="1" checked style="margin-right: 5px;">자유
			    <input type="radio" name="type" id="type2" autocomplete="off"
										required value="2"
										style="margin-left: 30px; margin-right: 5px;">후기
			</c:if>
								<c:if test="${board.type eq '2'}">
									<input type="radio" name="type" id="type1" autocomplete="off"
										required value="1" style="margin-right: 5px;">자유
			    <input type="radio" name="type" id="type2" autocomplete="off"
										required value="2" checked
										style="margin-left: 30px; margin-right: 5px;">후기
			</c:if>

							</div> --%>
							
							<c:if test="${board.type eq '1'}">
							<div id="location" style=display:none>
							<label class="col-sm-6" for="form-field-1-1"
								style="margin-top: 30px;"> <h4>지역</h4> </label>
								<div>
				<input type="text" id="form-field-1-1" class="form-control"	name='location' value="${board.location }" />
			</div>
			</div>
			</c:if>
			<c:if test="${board.type eq '2'}">
			<div id="location" style=display:block>
							<label class="col-sm-6" for="form-field-1-1"
								style="margin-top: 30px;"> <h4>지역</h4> </label>
								<div>
				<input type="text" id="form-field-1-1" class="form-control"	name='location' value="${board.location }" style="background-color:white; border-radius: 40px; text-align: center;"/>
			</div>
			</div>
			</c:if>


						</div>

						<div class="" style="margin-top: 30px;">
							<div class="">
								<!-- PAGE CONTENT BEGINS -->
								<h4 class="header blue clearfix" style="margin-bottom: 10px;">CONTENT</h4>

								<textarea id="editor4" name="content" readonly  >
									${board.content }
									</textarea>
								<!-- <script>
									 CKEDITOR.replace('editor4');
						 			</script> -->
							<script>CKEDITOR.replace('editor4',{filebrowserUploadUrl:'/mine/imageUpload.do'});</script>


								<div class="hr hr-double dotted"></div>



								<!-- PAGE CONTENT ENDS -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->

							<div style="margin-top: 30px; margin-left:10px; float: right;">
								<c:if test="${board.mem_id eq id}">
								<input type="button" id="deletebtn" class="btn btn-white btn-danger"
								data-oper='list' value="DEL"/>
								<div style="display:none">
								<form action="delete" method="post" id="deletesub">
								<input name="num" style="display:none" value="${board.num }">
								<input type="submit" value="삭제">
								</form>
								</div>
								</c:if>
							</div>
								
							<div style="margin-top: 30px; float: right;">
								<c:if test="${board.mem_id eq id}">
								<form action="modifyform" method="get">
								<input name="num" style="display:none" value="${board.num }">
								<input type="submit" class="btn btn-white btn-warning"
								data-oper='list' value="MODI" />
								</form>
								</c:if>
							</div>
								
		<div class="" style="margin-top: 30px; position: absolute;">
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
    $("#deletebtn").click(function(){
		if(confirm("삭제하시겟습니까?")){
			$("#deletesub").submit();

		} else{
		}
    });
  
    
});
</script>
</html>