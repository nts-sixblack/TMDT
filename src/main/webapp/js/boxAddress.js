var boxList = document.querySelector('.list-address');
var itemAddress = boxList.querySelectorAll('.item');

for (let i = 0; i < itemAddress.length; i++) {
    itemAddress[i].querySelector('button').onclick = function() {
        let j = 0;
        while (j < itemAddress.length) {
            itemAddress[j++].className = 'item';
        }
        itemAddress[i].className = 'item is-active';

        document.querySelector('.name-act').innerHTML =
            itemAddress[i].querySelector('.name').outerHTML;
        document.querySelector('.address-act').innerHTML =
            itemAddress[i].querySelector('.address').outerHTML;
        document.querySelector('.number-act').innerHTML =
            itemAddress[i].querySelector('.number').outerHTML;
        document.querySelector('.log-act').innerHTML =
            itemAddress[i].querySelector('.log').outerHTML;
        document.querySelector('.lat-act').innerHTML =
            itemAddress[i].querySelector('.lat').outerHTML;
    }
}