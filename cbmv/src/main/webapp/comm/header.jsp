<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <link href="${ctx }/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/cbmv.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/index.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="${ctx }/js/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx }/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctx }/js/cbmv.js"></script>
	<script>
		ctx = '${ctx}';
		if('${msg}'){
			alert("${msg}");
		}
		newlist = '${tb}';
		sc = '${sc}'
	</script>
	<%-- <script type="text/javascript" src="${ctx }/js/index.js"></script> --%>