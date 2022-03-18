
var numberProperties = document.getElementById('numberProperties')
var defaul = document.getElementById('defaul')
var properties = document.getElementById('properties')
var x

properties.innerHTML = ""

function check() {
    var key = document.getElementById('numberProperties').value
    if (key > 0){
        defaul.innerHTML = ""
    } else {
        defaul.innerHTML = '<p>*Giá</p>'+
            '<input type="text" placeholder="VNĐ" onkeypress="isInputNumbers(event);">'+
            '<p>*Kho hàng</p>'+
            '<input type="text" placeholder="Số lượng hàng có trong kho" onkeypress="isInputNumbers(event);">';
        properties.innerHTML = ""
    }
}

function addProperties(){
    x = numberProperties.value
    x++
    numberProperties.setAttribute('value', parseInt(x) )
    check()

    properties.innerHTML += '' +
        '<div class="group">'+
            '<p>Nhóm phân loại</p>'+
            '<div class="add-group">'+
                '<p>Tên nhóm phân loại</p>'+
                '<input type="text" placeholder="VD: Màu sắc, Kích cỡ..." name="nameProperties'+x+'">'+
                '<p>Phân loại hàng</p>'+
                '<input type="numer" value="1" hidden name="properties'+x+'">'+
                '<div class="price-to-type" id="type-group">'+
                    '<div class="price-to-type_item">'+
                        '<input type="text" placeholder="VD: Đỏ, xanh, vàng; S, M, L..." class="type-name-product"  name="value'+x+'1">'+ // x là số thứ tự của properties, 1 là số thứ tự value nằm trong properties
                        '<p>*Giá: </p>'+
                        '<input type="text" placeholder="VNĐ" onkeypress="isInputNumbers(event);" name="price'+x+'1">'+
                        '<p>*Kho hàng</p>'+
                        '<input type="text" placeholder="Số lượng hàng có trong kho" onkeypress="isInputNumbers(event);"  name="number'+x+'1">'+
                    '</div>'+

                '</div>'+
                '<label class="add-type add-value final" onclick="addValue(this)" >'+
                '<ion-icon name="add-circle-outline"></ion-icon>'+
                'Thêm phân loại hàng'+
                '</label>'+
            '</div>'+
        '</div>'

}

function deleteProperties() {
    var p = properties.children.length
    properties.removeChild(properties.childNodes[p-1])
    var k = numberProperties.value
    numberProperties.setAttribute('value', parseInt(k-1))
    check()
}


function addValue(Object){
    var divValue = Object.parentElement.children[4] // thẻ div chứa các danh sách các value
    console.log(divValue)
    var number = Object.parentElement.children[4].children[0].children[0].name.substr(5, 1) // số thứ tự properties
    // var number = Object.parentElement.children[3]

    console.log(number)
    var index = Object.parentElement.children[4].children.length + 1 // đếm số lượng các thẻ ghi giá trị
    console.log(index)
    Object.parentElement.children[3].setAttribute('value', index)
    divValue.innerHTML += '<div class="price-to-type_item">'+
        '<input type="text" placeholder="VD: Đỏ, xanh, vàng; S, M, L..." class="type-name-product"  name="value'+number+''+index+'">'+
        '<p>*Giá: </p>'+
        '<input type="text" placeholder="VNĐ" onkeypress="isInputNumbers(event);" name="price'+number+''+index+'">'+
        '<p>*Kho hàng</p>'+
        '<input type="text" placeholder="Số lượng hàng có trong kho" onkeypress="isInputNumbers(event);"  name="number'+number+''+index+'">'+
        '</div>'

}
