var vectorX = ['Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7', 'CN'];
var lineA = [2, 8, 12, 6, 57, 12, 9];
var lineB = [10, 15, 22, 16, 67, 19, 10];

var CHART = document.getElementById('index_chart').getContext('2d');
Chart.defaults.font.size = 10;
var index_chart = new Chart(CHART, {
    type: 'line',
    data: {
        labels: vectorX,
        datasets: [{
                data: lineA,
                label: 'Đơn hàng',
                backgroundColor: 'transparent',
                borderColor: '#FF8E6E',
                borderWidth: 2
            },
            {
                data: lineB,
                label: 'Lượt truy cập',
                backgroundColor: 'transparent',
                borderColor: 'rgb(73, 73, 73)',
                borderWidth: 2
            }
        ]
    }

});