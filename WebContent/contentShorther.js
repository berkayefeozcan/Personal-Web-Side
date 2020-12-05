/**
 * 
 */

let content = document.getElementsByClassName("content");

for(var i=0;i<content.length;i++){ 
    let contentLength = content[i].textContent.length;
   
    if(contentLength> 400){ // eger icerik uzunlugu 400 karaketer buyukse icerik kisaltildi.
        content[i].textContent = content[i].textContent.substr(0,400);
    }
    
    
   
}