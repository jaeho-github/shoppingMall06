<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test = "${resultPage.currentPage <= resultPage.pageUnit }">
	◀이전
</c:if>
<c:if test = "${resultPage.currentPage > resultPage.pageUnit }">
	<a href = "javascript:fncGetList(${resultPage.beginUnitPage -1 })">◀이전</a>
</c:if>
<c:forEach var = "i" begin = "${resultPage.beginUnitPage }" end = "${resultPage.endUnitPage }">
	<a href = "javascript:fncGetList(${i })">${i }</a>
</c:forEach>
<c:if test = "${resultPage.endUnitPage < resultPage.maxPage }">
	<a href = "javascript:fncGetList(${resultPage.endUnitPage +1 })">▶이후</a>
</c:if>
<c:if test = "${resultPage.endUnitPage >= resultPage.maxPage }">
	▶이후
</c:if>
