<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
</head>
<body>
<script>
function fold(x) {
  var y = x.nextSibling;
  while (y.nodeType != 1)
    y = y.nextSibling;
  if (y.style.display == 'none')
    y.style.display = '';
  else
    y.style.display = 'none';
}
</script>
<dl>
  <dt onclick="fold(this)">CD</dt>
  <dd style="display:none">容量は540M〜700Mで，書き換えできないCD-Rと，書き換え可能なCD-RWがあります。</dd>
  <dt onclick="fold(this)">DVD</dt>
  <dd style="display:none">容量は1層で470Gで，書き換えできないDVD-R，DVD+Rと，書き換え可能なDVD-RW，DVD-RAM，DVD+RWがあります。</dd>
  <dt onclick="fold(this)">BD</dt>
  <dd style="display:none">Blu-ray Discの略です。容量は1層で25Gです。</dd>
</dl>
</body>
</html>