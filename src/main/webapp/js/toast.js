function toast({
    title = '',
    message = '',
    type = 'info'
}) {
    const main = document.getElementById('toast');
    if (main) {
        const toast = document.createElement('div');

        const autoRemove = main.appendChild(toast)
        setTimeout(function() {
            main.removeChild(toast);
        }, 6000);

        toast.onclick = function(e) {
            if (e.target.closest('.toast__close')) {
                main.removeChild(toast);
                clearTimeout(autoRemove)
            }
        }

        const icons = {
            success: 'checkmark-circle-outline',
            info: 'information-circle-outline',
            warning: 'warning-outline',
            error: 'alert-circle-outline'
        }
        const icon = icons[type];
        toast.classList.add('toast', `toast--${type}`);
        toast.innerHTML = `
            <div class="toast__icon">
                <ion-icon name="${icon}"></ion-icon>
            </div>
            <div class="toast__body">
                <h3 class="toast__title">${title}</h3>
                <p class="toast__msg">${message}</p>
            </div>
            <div class="toast__close">
                <ion-icon name="close-outline"></ion-icon>
            </div>
        `;

    }
}

// var item = document.getElementById('toast').className;
// var mess = document.getElementById('message').innerHTML;
//
// toast({
//     title: 'Thông báo',
//     message: mess,
//     // type: 'info',
//     // type: 'success'
//     type: item
//         // type: 'error'
// });

// toast({
//     title: 'abd',
//     message: 'fsdfsdfsd',
//     // type: 'info',
//     type: 'success'
//         // type: 'warning'
//         // type: 'error'
// });
// toast({
//     title: 'abd',
//     message: 'fsdfsdfsd',
//     type: 'info',
//     // type: 'success'
//     // type: 'warning'
//     // type: 'error'
// });
// toast({
//     title: 'abd',
//     message: 'fsdfsdfsd',
//     // type: 'info',
//     // type: 'success'
//     // type: 'warning'
//     type: 'error'
// });