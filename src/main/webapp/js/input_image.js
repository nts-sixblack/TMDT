
let fileInput = document.getElementById("file-input");
let imageContainer = document.getElementById("images");
let numOfFiles = document.getElementById("num-of-files");
let nameImage = document.getElementById("nameImage");
let quantityImage = document.getElementById("quantityImage")
var files =[]

const albumBucketName = "image-electronic-ecommerce";
const bucketRegion = "ap-southeast-1";
const IdentityPoolId = "ap-southeast-1:0eb25be7-d881-4faa-8f1c-6965381a51ce";

AWS.config.update({
    region: bucketRegion,
    credentials: new AWS.CognitoIdentityCredentials({
        IdentityPoolId: IdentityPoolId
    })
});

var s3 = new AWS.S3({
    apiVersion: "2006-03-01",
    params: { Bucket: albumBucketName }
});

function preview() {
    imageContainer.innerHTML = "";
    file = fileInput.files;
    for (var i = 0; i< file.length; i++){
        files.push(file[i])
    }
    numOfFiles.textContent = files.length + ' files selected';


    quantityImage.innerHTML = '<input type="text" name="quantityImage" hidden value="'+files.length+'">'

    // nameImage.innerHTML = ""

    // for (var i = 0; i<files.length; i++){
    //   var name = addPhoto(files[i])
    //     nameImage.innerHTML += '<input type="text" name="nameImage'+j+'" hidden value="'+name+'">'
    //     j++
    // }

    for (i of files) {
        let reader = new FileReader();
        let figure = document.createElement("figure");
        let figCap = document.createElement("figCaption");

        figCap.innerText = i.name;
        figure.appendChild(figCap);
        reader.onload = () => {
            let img = document.createElement("img");
            img.setAttribute("src", reader.result);
            figure.insertBefore(img, figCap);

        }
        imageContainer.appendChild(figure);
        reader.readAsDataURL(i);
    }
}

function addPhoto(file) {
    // var files = file
    // console.log(files)
    var albumName = 'image-product'
    // var files = document.getElementById("photoupload").files;
    // if (!files.length) {
    //   return alert("Please choose a file to upload first.");
    // }
    // var file = files[0];
    var fileName = randomName();
    var albumPhotosKey = encodeURIComponent(albumName) + "/";

    var photoKey = albumPhotosKey + fileName;

    // Use S3 ManagedUpload class as it supports multipart uploads
    var upload = new AWS.S3.ManagedUpload({
        params: {
            Bucket: albumBucketName,
            Key: photoKey,
            Body: file
        }
    });

    var promise = upload.promise();

    promise.then(
        function(data) {
            // alert("Successfully uploaded photo.");
            // viewAlbum(albumName);
            // console.log('ok')
        },
        function(err) {
            return alert("There was an error uploading your photo: ", err.message);
        }
    );
    return ('https://'+albumBucketName+'.s3.'+bucketRegion+'.amazonaws.com/'+photoKey)
}

function save(){
    var j =1;
    nameImage.innerHTML = ""
    for (var i = 0; i<files.length; i++){
        var name = addPhoto(files[i])
        nameImage.innerHTML += '<input type="text" name="nameImage'+j+'" hidden value="'+name+'">'
        j++
    }
}

function randomName() {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for (var i = 0; i < 32; i++)
        text += possible.charAt(Math.floor(Math.random() * possible.length));

    return text+'.jpg';
}


