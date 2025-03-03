document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");
    const fileInput = document.querySelector("#vimage");

    form.addEventListener("submit", function (event) {
        if (!validateForm()) {
            event.preventDefault();
        }
    });

    function validateForm() {
        let isValid = true;
        let firstErrorField = null;

        const inputs = document.querySelectorAll("input[type='text']");
        
        inputs.forEach(input => {
            let errorSpan = input.nextElementSibling;
            if (!errorSpan || !errorSpan.classList.contains("error-message")) {
                errorSpan = document.createElement("span");
                errorSpan.classList.add("error-message");
                input.parentNode.appendChild(errorSpan);
            }
            
            if (input.value.trim() === "") {
                isValid = false;
                input.style.border = "2px solid red";
                errorSpan.textContent = "This field is required";
                if (!firstErrorField) firstErrorField = input;
            } else {
                input.style.border = "1px solid #ccc";
                errorSpan.textContent = "";
            }
        });

        if (fileInput.files.length === 0) {
            isValid = false;
            alert("Please upload an image.");
            if (!firstErrorField) firstErrorField = fileInput;
        }

        if (firstErrorField) {
            firstErrorField.scrollIntoView({ behavior: "smooth", block: "center" });
        }

        return isValid;
    }

    fileInput.addEventListener("change", function () {
        const file = fileInput.files[0];
        if (file) {
            const validTypes = ["image/jpeg", "image/png", "image/gif"];
            if (!validTypes.includes(file.type)) {
                alert("Invalid file type. Please upload an image (JPEG, PNG, or GIF).");
                fileInput.value = "";
            }
        }
    });
});
