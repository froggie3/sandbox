<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/style.css">
    <link rel='stylesheet' id='googlefont-css'  href='https://fonts.googleapis.com/css2?family=Open+Sans&#038;family=Roboto+Mono&#038;display=swap' type='text/css' media='all' />
    <title>yokkin.com</title>
</head>

<style>
    pre {
        font-family: 'Roboto Mono';
    }
</style>

<body>
<?php
echo '<pre>';

$descriptionMessage = [
    'front' => [
        'title' => '<span class=\'word-wrap-block\'>Welcome</span> <span class=\'word-wrap-block\'>to</span> <span class=\'word-wrap-block\'>yokkin.com!</span>',
        'description' => '<span class=\'word-wrap-block\'>インターネット上にて</span><span class=\'word-wrap-block\'>活動する音屋、</span><span class=\'word-wrap-block\'>YokkinのWebサイトです。</span>',
    ],
    'home' => [
        'title' => 'Knowledge Base',
        'description' => 'お知らせや身辺のことを綴っています。',
    ],
    '404' => [
        'title' => '404 Not Found',
        'description' => 'ページが見つかりませんでした。',
    ],
    'comission' => [
        'title' => 'Comission',
        'description' => 'ここに記載している内容は、随時変更される可能性があります。',
    ],
];

echo $descriptionMessage['front']['description']; 

echo '</pre>'; 



?>





</body>
</html>

