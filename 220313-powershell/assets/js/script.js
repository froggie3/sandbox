
let toggledState;
let i = 0;
const introDuctory = [
    "インターネット上にて活動する音屋、“Yokkin”のWebサイトです。",
    "お知らせや身辺のことを綴っています。",
    "Yokkinへのお問い合わせはこちらのページよりどうぞ。",
];

window.onload = function() {
    document.getElementById("elementDescription").innerHTML = introDuctory[0];
    console.log(document.documentURI);
    
    function initToggle(){
        toggledState = Boolean();
        console.log(toggledState);
    }

    initToggle();
};

function displayTitleAndDescription() {
    if (i >= introDuctory.length) {
        i = 0;
        console.clear();
        console.log("initiated");
    }

    document.getElementById("elementDescription");
    elementDescription.innerHTML = introDuctory[i];
    console.log(introDuctory[i]);
    i++;
}

// 自力で実装したやつ↓

function toggleOnOff2() {
    let element = document.getElementById("hiddenContent");
    element.classList.add('hidden');

    if (toggledState) { // if true
        toggledState = Boolean();
        element.classList.add('hidden');
    } else {
        toggledState = Boolean("a");
        element.classList.remove('hidden');
    }
    console.log(toggledState);
}


let element = document.getElementById("displayGalleryBtn");
element.addEventListener('click', function() {
    let object = document.getElementById('hiddenContent') 
    object.classList.toggle('hidden');
})