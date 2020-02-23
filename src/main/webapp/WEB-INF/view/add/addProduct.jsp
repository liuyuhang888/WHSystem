<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="form-group">
    <label for="productName">产品姓名</label><input type="text" name="productName" class="form-control" id="productName" />
</div>
<div class="form-group">
    <label for="productPrice">产品价格</label><input type="text" name="productPrice" class="form-control" id="productPrice" />
</div>
<div class="form-group">
    <label for="productDesc">产品描述</label><input type="text" name="productDesc" class="form-control" id="productDesc" />
</div>
<div class="form-group">
    <label for="productStock">产品库存</label><input type="text" name="productStock" class="form-control" id="productStock" />
</div>
<div class="form-group">
    <label for="productCategory">产品类别</label>
    <select id="productCategory" name="productCategoryId">
    <c:forEach items="${productCategoryList}" var="productCategory">
        <option value="${productCategory.productCategoryId}">${productCategory.productCategoryName}</option>
    </c:forEach>
    </select>
</div>
<div class="form-group">
    <label for="vender">产品经销商</label>
    <select id="vender" name="venderId">
        <c:forEach items="${venderList}" var="venderList">
            <option value="${venderList.venderId}">${venderList.venderName}</option>
        </c:forEach>
    </select>
</div>
</body>
</html>
