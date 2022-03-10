let toggledState;

let i = 0;

const introDuctory = [
    "インターネット上にて活動する音屋、“Yokkin”のWebサイトです。",
    "お知らせや身辺のことを綴っています。",
    "Yokkinへのお問い合わせはこちらのページよりどうぞ。",
    "このサイトにおけるプライバシーの取り扱い方の方針を示しています。",
    "Yokkinが作成した著作物の利用規約です。"
];

initToggle();

function displayTitleAndDescription() {
    if (i >= introDuctory.length) {
        i = 0;
        console.clear();
        console.log("initiated");
    }

    document.getElementById("elementDesctiption");
    elementDesctiption.innerHTML = introDuctory[i];
    console.log(introDuctory[i]);
    i++;
}


function initToggle(){
    toggledState = Boolean();
    console.log(toggledState);
}
function toggleOnOff() {
    if(toggledState) { // if true
        toggledState = Boolean();
    } else {
        toggledState = Boolean("a");
    }
    console.log(toggledState);
}
function sheepCount() {
    console.clear();
    for (var i = 1; i <= 100; i++) {
        console.log("羊が" + i + "匹、");
    }
    console.log("ぐぅ。");
}
function evenOdd() {
    console.clear();
    for (var i = 1; i <= 10; i++) {
        console.log(i + "は奇数<br>");
        i++;
        console.log(i + "は偶数<br>");
    }	
}
function evenOdd3() {
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