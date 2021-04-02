// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')
// window.jQuery = window.jquery = window.$ = require('jquery')
window.jQuery = $
window.$ = $
window.jquery = $

// require("bootstrap/dist/js/bootstrap")
import "bootstrap";
import "../stylesheets/application";
import "./custom";

require.context('../../assets/images', true);

/**
 * Shows the image uploaded using the file input when parsed with
 * the `File input` and `Image tag id`
 * @param {*} file_input
 * @param {String} imageTagId
 */
 window.previewPhotograph = (file_input, imageTagId) => {
    let imageTag = "#".concat(imageTagId);

    if (file_input.files && file_input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $(imageTag).attr("src", e.target.result);
            // .width(150)
            // .height(200);
        };

        reader.readAsDataURL(file_input.files[0]);
    }
};


/**
 * Checks if `file input field` has a file uploaded and
 * returns `true` if file is attached else returns `false`
 * @param {string} fileUploadId 
 */
 window.isFileUploaded = (fileUploadId) => {

    const _fileInputElement = document.getElementById(`${fileUploadId}`);

    if (_fileInputElement.files.length <= 0) {
        return false;
    } else {
        return true;
    }
}

/**
 * Prevents a `form` from submitting if `isFileUploaded()` method returns
 * `false` meaning no `image file` has been uploaded
 * @param {string} formId 
 * @param {string} photoFileInputId 
 */
window.validatePhotoOnFormSubmit = (formId, photoFileInputId) => {

    $(`#${formId}`).on('submit', function (e) {

        const _fotoIsAttached = isFileUploaded(photoFileInputId);

        if (_fotoIsAttached === false) {
            alert("Please upload a photograph for the Activity");

            e.preventDefault();
            return false;
        };
    });
}

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
