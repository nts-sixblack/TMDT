
var sumPrice = document.getElementById('price');
var listProperties = document.getElementsByClassName('product-attributes');
var count = listProperties.length;
var countProperties = document.getElementById('countProperties');
countProperties.setAttribute('value', count);
// document.getElementById('inputPrice').setAttribute('value', sumPrice.innerHTML);
var mang = [];

function check(price, index){
    mang[index] = price;
    var i, k=0;
    for(i = 0; i<count; i++){
        if(mang[i] == null){
            k = 1;
        }
    }
    if(k==0){
        var sum = 0;
        for(i = 0; i<count; i++){
            sum+=mang[i];
        }
        sumPrice.innerHTML = sum;
    }
}

let listAttributes = document.querySelectorAll('.product-attributes');

for (let k = 0; k < listAttributes.length; k++) {
    let itemGroup = listAttributes[k].querySelectorAll('.item-properties');
    listAttributes[k].onclick = function() {
        for (let i = 0; i < itemGroup.length; i++) {
            itemGroup[i].onclick = function() {
                let j = 0;
                while (j < itemGroup.length) {
                    itemGroup[j++].className = itemGroup;
                }
                itemGroup[i].className = 'is-active';
                var price = parseInt(itemGroup[i].children[0].children[1].innerHTML);
                var index = itemGroup[i].parentElement.parentElement.parentElement.children[0].children[1].innerHTML
                // console.log(index)
                check(price, index)
                console.log(price)
                console.log(index)

                var idValue = itemGroup[i].children[0].children[2].innerHTML
                var inputIdValue = itemGroup[i].parentElement.parentElement.parentElement.children[0].children[3]
                inputIdValue.setAttribute('value', idValue)
                console.log(idValue)
                console.log(inputIdValue)

                var nameValue = itemGroup[i].children[0].children[0].innerHTML
                var inputNameValue = itemGroup[i].parentElement.parentElement.parentElement.children[0].children[2]
                inputNameValue.setAttribute('value', nameValue)
                console.log(nameValue)
                console.log(inputNameValue)
            }
        }
    }
}


