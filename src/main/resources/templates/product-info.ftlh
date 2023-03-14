<!DOCTYPE html>
<html>
<head>
    <title>BYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h4>Detailed Information about Product</h4>
<b>Name of the product: </b>${product.title}<br>
<b>Description of the product: </b>${product.description}<br>
<b>Price of the product: </b>${product.price}<br>
<b>Location of the product: </b>${product.city}<br>
<b>Author of the product: </b>${product.author}<br>
<hr>
<h3 Create new product></h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete Product"/>
</form>
</body>
</html>