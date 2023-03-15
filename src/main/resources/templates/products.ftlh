<!DOCTYPE html>
<html>
<head>
    <title>BYSELL</title>
</head>
<body>
<h1>List of Products</h1>

<form action="/" method="get">
    Find product by title: <input type="text" name="title"><br>
    <input type="submit" value="Search"/>
</form>

<#list productList as product>
<div>
    <p><b>${product.title}</b> ${product.price } $ | <a href="/product/${product.id}">More details...</a></p>
</div>
    <#else>
    <h3>Currently there is no Products</h3>
</#list>
<hr>
<h4>Create new product</h4>
<form action="/product/create" method="post">
    Name of the Product: <input type="text" name="title"/><br><br>
    Description of the Product: <input type="text" name="description"/><br><br>
    Price of the Product: <input type="number" name="price"/><br><br>
    Location of the Product: <input type="text" name="city"/><br><br>
    Name of the Author: <input type="text" name="author"/><br><br>
    <input type="submit" value="Add Product"/>
</form>
</body>
</html>