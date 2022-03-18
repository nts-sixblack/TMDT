
// var input = document.getElementById('inputNumber')
function increment(Object){
    var input = Object.parentElement.children[1].children[0]
    var oldValue = parseInt(input.value);
    if (oldValue < 10){
        input.setAttribute('value', oldValue + 1 )
    }
}

function decrement(Object){
    var input = Object.parentElement.children[1].children[0]
    console.log(input)
    var oldValue = parseInt(input.value);
    if (oldValue > 1){
        input.setAttribute('value', oldValue - 1 )
    }
}