

async function img(){
    let img = await fetch(window.location.origin+"/api/getData.php?item=imagenes&id_expo=48&onlyImg")
    return img.json();
}
img().then(a =>{
    
    
    document.querySelector(".expo-carusel").innerHTML = globalThis.expoCaruselComponent(globalThis.getImages(a), "JUAN");

    globalThis.loadFirstImage();
})