function minValue() {
    if (document.getElementById('createPass').value.length < 6) {
        document.getElementById('createPass').style.borderColor = 'red';
    } else {
        document.getElementById('createPass').style.borderColor = '#ccc';
    }
}

function comparePass() {
    var createPass = document.getElementById('createPass').value;
    var confPass = document.getElementById('confPass').value;
    const btnCreatAccount = document.getElementById('btnCreateAccount');
    var status = document.getElementById('signup-status')

    if (createPass != confPass) {
        document.getElementById('confPass').style.borderColor = 'red';
        btnCreatAccount.style.cursor = 'no-drop'
        status.innerHTML = ('Nhập lại mật khẩu sai!');

    } else if (createPass == confPass) {
        console.log(createPass);
        console.log(confPass)
        document.getElementById('confPass').style.borderColor = 'green';
        btnCreatAccount.style.cursor = 'pointer'
        status.innerHTML = ('');
    }
}