<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
</head>
<body>
<script>
var img = new Image();
img.src = "./img/photo2.jpg";
</script>

<img src="./img/photo1.jpg" alt="Click me!"
	onmouseover="this.src='./img/photo2.jpg'"
	onmouseout="this.src='./img/photo1.jpg'"
	onmousedown="alert('ガオー！！')">

</body>
</html>