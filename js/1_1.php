<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
</head>
<body>

<script>
	function sheepCount(x) {
		console.clear();
		for (var i = 1; i <= 100; i++) {
			console.log("羊が" + i + "匹、");
		}
		console.log("ぐぅ。");
	}
	function evenOdd(x) {
		console.clear();
		for (var i = 1; i <= 10; i++) {
			console.log(i + "は奇数<br>");
			i++;
			console.log(i + "は偶数<br>");
		}	
	}
	function evenOdd3(x) {
		console.clear();
		for (var i = 1; i <= 10; i++) {
			if (i % 2 == 0) {
				console.log(i + "は奇数<br>");
			} else if (i % 3 == 0) {
				console.log(i + "は3の倍数<br>");
			} else {
				console.log(i + "は偶数<br>");
			}
		}
	}
</script>

<button onClick="sheepCount(this)">sheep_count</button>

<button onClick="evenOdd(this)">evenOdd</button>

<button onClick="evenOdd3(this)">evenOdd3</button>

</body>
</html>