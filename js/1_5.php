<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
</head>
<body>
<p>
<script>
	for (var i = 1; i <= 100; i++) {
		if (i % 3 == 0) {
			if (i % 5 == 0) {
				document.write(i + " FizzBuzz<br>");
			} else {
				document.write(i + " Fizz<br>");
			}
		} else if (i % 5 == 0) {
			document.write(i + " Buzz<br>");
		} else {
			document.write(i + "<br>");
		}
	}
</script>
</p>
</body>
</html>