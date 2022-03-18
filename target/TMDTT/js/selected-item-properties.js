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
            }
        }
    }
}