
var checkboxAll = document.getElementById('select-all')
var checkboxShop = document.getElementsByClassName('checkShop')
var checkboxItem = document.getElementsByClassName('checkItem')

var countItem = document.getElementById('countItem')
var valueItem = document.getElementById('valueItem')

var sumPrice = document.getElementById('sumPrice')
var price = document.getElementById('price')
var totalMoneyShip = document.getElementById('totalMoneyShip')

var totalPrice = document.getElementById('totalPrice')
var ship = document.getElementById('ship')
var distance = document.getElementsByClassName('distance')

var logUser = document.getElementById('log').innerHTML
var latUser = document.getElementById('lat').innerHTML

mapboxgl.accessToken = 'pk.eyJ1Ijoic2l4YmxhY2siLCJhIjoiY2t0bzB6ajU2MDc4eDJ3bzJvdmNrdThhciJ9.i6WawPiXk5lgXXmLCC5U5A';

const linestring = {
    'type': 'Feature',
    'geometry': {
        'type': 'LineString',
        'coordinates': []
    }
};

const pointUser = {
    'type': 'Feature',
    'geometry': {
        'type': 'Point',
        'coordinates': [latUser, logUser]
    },
    'properties': {
        'id': String(new Date().getTime())
    }
};

function checkAll(){
    var check = checkboxAll.checked
    chooseAll(check)
}

function chooseAll(boolean){
    for(var i = 0; i < checkboxShop.length; i++){
        checkboxShop[i].checked = boolean
    }

    for(var i = 0; i < checkboxItem.length; i++){
        checkboxItem[i].checked = boolean
    }

    choose()
}

function checkShop(Object){
    var boolean = Object.checked
    var listCheck = Object.parentElement.parentElement.children[1].children
    for(var i = 0; i<listCheck.length; i++){
        listCheck[i].children[0].checked = boolean
    }
    choose()
}

function choose(){
    valueItem.innerHTML = ""
    var j = 1;
    var sum = 0;
    for(var i = 0; i< checkboxItem.length; i++){
        if(checkboxItem[i].checked == true){
            var idItem = checkboxItem[i].parentElement.children[1].innerHTML
            var numberItem = checkboxItem[i].parentElement.children[5].children[1].children[0].value
            var priceItem = checkboxItem[i].parentElement.children[4].innerHTML
            var q = parseInt(priceItem)*parseInt(numberItem)
            checkboxItem[i].parentElement.children[6].children[0].innerHTML = ""+q
            sum+= q
            valueItem.innerHTML+=''+
                '<input type="text" name="idItem'+j+'" value="'+idItem+'">'+
                '<input type="text" name="numberItem'+j+'" value="'+numberItem+'">'
            j++
            // lấy log, lat của shop chứa sản phẩm đó
            var log = checkboxItem[i].parentElement.parentElement.parentElement.children[0].children[2].innerHTML
            var lat = checkboxItem[i].parentElement.parentElement.parentElement.children[0].children[3].innerHTML
            // gán khoảng cách từ user đến shop
            checkboxItem[i].parentElement.parentElement.parentElement.children[0].children[4].innerHTML = distanceShop(log, lat)
        }
    }

    checkChoose()

    var sumDistance = 0
    for (var i = 0; i< distance.length; i++){
        var exchange = 1000
        var countDistance = parseInt(distance[i].innerHTML)
        if (countDistance > 200) {
            exchange = 100
        } else if (countDistance > 100){
            exchange = 300
        } else if (countDistance > 50){
            exchange = 500
        } else if (countDistance > 20){
            exchange = 700
        }
        sumDistance += countDistance*exchange
    }

    ship.innerHTML = sumDistance
    totalMoneyShip.value = sumDistance

    var summ = sum + sumDistance
    console.log(sumDistance)
    console.log(summ)
    console.log(price)
    console.log(totalMoneyShip)

    countItem.setAttribute('value', j)
    sumPrice.innerHTML = sum
    price.setAttribute('value', summ)
    totalMoneyShip.setAttribute('value', sumDistance)
    totalPrice.innerHTML = sum + parseInt(ship.innerHTML)

}

// khoẳng cách giữa user và shop dựa vào kinh độ, vĩ độ
function distanceShop(log, lat){
    const geojson = {
        'type': 'FeatureCollection',
        'features': []
    };
    geojson.features.push(pointUser);

    const point = {
        'type': 'Feature',
        'geometry': {
            'type': 'Point',
            'coordinates': [lat, log]
        },
        'properties': {
            'id': String(new Date().getTime())
        }
    };
    geojson.features.push(point);

    linestring.geometry.coordinates = geojson.features.map(
        (point) => point.geometry.coordinates
    );

    return turf.length(linestring)
}
// kiểm tra xem shop nào đang có sản phẩm được chọn, nếu không có sản phẩm nào thì gán khoảng cách bằng 0
function checkChoose(){
    var cardShop = document.getElementsByClassName('card_cart-list-order');
    for (var i = 0; i< cardShop.length; i++){
        var item = cardShop[i].children[1].children
        var boolean = 0
        for (var j = 0; j<item.length; j++){
            if (item[j].children[0].checked == true){
                boolean = 1
            }
        }
        if (boolean == 0) {
            cardShop[i].children[0].children[4].innerHTML = '0'
            // console.log(cardShop[i].children[0].children[4])
        }
    }
}
