<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://unpkg.com/d3-milestones/build/d3-milestones.css">
<script src="https://unpkg.com/d3-milestones/build/d3-milestones.min.js"></script>
</head>
<body>
	<div class="card">
		<div class="card-header">기자회견 조회하기</div>
		<div class="card-body">
			<form>
				<div class="form-group">
					<div class="row">
						<div class="col">
							<input type="text" name="from_date" id="from_date"
								class="form-control" placeholder="YYYY-mm-dd">
						</div>
						<div class="col">
							<input type="text" name="to_date" id="to_date"
								class="form-control" placeholder="YYYY-mm-dd">
						</div>
						<div class="col">
							<input type="text" name="name" id="name" class="form-control"
								placeholder="이름">
						</div>
						<div class="col">
							<input type="text" name="party" id="party" class="form-control"
								placeholder="정당명">
						</div>
						<div class="col">
							<button type="submit" id="button" class="btn btn-primary">조회</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="title"
		style="text-align: center; font-size: 16px; font-weight: bold; margin: 12px 0px;">
		<span>타임라인 제목 영역</span>
	</div>
	<!-- #wrapper의 height는 600px로 고정 -->
	<div id="wrapper"
		style="overflow: auto; position: relative; height: 600px;">
		<!-- d3-milestones를 이용해서 타임라인을 출력하는 영역(조회된 기자회견 개수 * 40px로 height를 동적으로 설정할 것, 최소값: 550px)
-->
		<div id="timeline"></div>
	</div>
	
</body>
</html>
<script>
$("#button").click(
        function getMemberList(e) {
            var data = {
                from_date: $('#from_date').val(),
                to_date: $('#to_date').val(),
                name: $('#name').val(),
                party: $('#party').val()
            };

        $.ajax({
            type: "GET",
            data: data,
            url: "/result",
            dataType: "html",
            async: true,
            success: function(result) {
            	result = JSON.parse(result);
            	for(let i=0; i<result.length;i++){
            		result[i]["year"] = result[i]["date"].split('-')[0];
            	}
            	milestones('#timeline')
                .mapping({
                  'timestamp': 'year',
                  'text': 'title'
                })
                .parseTime('%Y')
                .aggregateBy('year')
                .render(result);
            }
        })
        e.preventDefault(); //버튼눌러서 링크이동할때 새로이동되는거 막아주는
        return false;
    });

            	
           
  
</script>