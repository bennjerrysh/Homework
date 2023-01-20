<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://unpkg.com/d3-milestones/build/d3-milestones.css">
<script src="https://unpkg.com/d3-milestones/build/d3-milestones.min.js"></script>

<div id="timeline"></div>
<script>
  milestones('#timeline')
    .mapping({
      'timestamp': 'year',
      'text': 'title'
    })
    .parseTime('%Y')
    .aggregateBy('year')
    .render([
      { year: 789, title: 'Vikings begin attacks on England.' },
      { year: 840, title: 'Vikings found Dublin in Ireland.' }
      ...
      { year: 1050, title: 'The city of Oslo is founded in Norway.' },
      { year: 1066, title: 'Battle of Hastings.' }
    ]);
</script>
</head>
<body>
	
</body>
</html>