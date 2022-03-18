function isInputNumbers(evt) {
    var char = String.fromCharCode(evt.which);
    if (!(/[0-9]/.test(char))) {
        evt.preventDefault();
        alert("Just enter the number. Bitch!!")
    }
}