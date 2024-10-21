const stateCities = {
    balochistan: ['Chaman', 'Dera Allah Yar', 'Gawadar', 'Quetta', 'Zhob'],
    kpk: ['Abbottabad', 'Charsadda', 'Kohat', 'Mardan', 'Peshawar'],
    punjab: ['Faisalabad', 'Jhang', 'Kasur', 'Lahore', 'Multan'],
    sindh: ['Badin', 'Dadu', 'Hyderabad', 'Karachi', 'Sukkur'],
    islamabad: ['Islamabad Capital Territory']
};

const stateSelect = document.getElementById('stateSelect');
const citySelect = document.getElementById('citySelect');

stateSelect.addEventListener('change', function() {
    const selectedState = this.value;
    citySelect.innerHTML = '<option value="" disabled selected>City</option>'; 

    if (stateCities[selectedState]) {
        stateCities[selectedState].forEach(function(city) {
            const newOption = document.createElement('option');
            newOption.value = city.toLowerCase();
            newOption.textContent = city;
            citySelect.appendChild(newOption);
        });
    }
});

document.getElementById("validation").addEventListener("submit", function(event) {
    event.preventDefault();

    const firstName = document.getElementById('firstName').value.trim();
    const lastName = document.getElementById('lastName').value.trim();
    const gender = document.querySelector('input[name="gender"]:checked');
    const state = stateSelect.value; 
    const city = citySelect.value; 
    const pincode = document.getElementById('pincode').value.trim();
    const course = document.getElementById('course').value.trim();
    const email = document.getElementById('email').value.trim();

    const nameRegex = /^[A-Za-z]{2,}$/;
    const pincodeRegex = /^\d{4,6}$/; 
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; 
    let isValid = true; 

    // Validate first name
    if (!nameRegex.test(firstName)) {
        document.getElementById('firstName').classList.add('is-invalid');
        isValid = false; // Mark as invalid
    } else {
        document.getElementById('firstName').classList.remove('is-invalid');
    }

    if (!nameRegex.test(lastName)) {
        document.getElementById('lastName').classList.add('is-invalid');
        isValid = false;
    } else {
        document.getElementById('lastName').classList.remove('is-invalid');
    }

    if (!gender) {
        document.querySelectorAll('input[name="gender"]').forEach(radio => {
            radio.classList.add('is-invalid');
        });
        isValid = false;
    } else {
        document.querySelectorAll('input[name="gender"]').forEach(radio => {
            radio.classList.remove('is-invalid');
        });
    }

    if (!state) {
        stateSelect.classList.add('is-invalid');
        isValid = false;
    } else {
        stateSelect.classList.remove('is-invalid');
    }

    if (!city) {
        citySelect.classList.add('is-invalid');
        isValid = false;
    } else {
        citySelect.classList.remove('is-invalid');
    }

    if (!pincodeRegex.test(pincode)) {
        document.getElementById('pincode').classList.add('is-invalid');
        isValid = false;
    } else {
        document.getElementById('pincode').classList.remove('is-invalid');
    }

    if (course.trim() === '') {
        document.getElementById('course').classList.add('is-invalid');
        isValid = false;
    } else {
        document.getElementById('course').classList.remove('is-invalid');
    }

    if (!emailRegex.test(email)) {
        document.getElementById('email').classList.add('is-invalid');
        isValid = false;
    } else {
        document.getElementById('email').classList.remove('is-invalid');
    }

    if (isValid) {
        this.classList.add('was-validated');
        alert('Form submitted successfully!');
    }
});

(function () {
    'use strict';

    var forms = document.querySelectorAll('.needs-validation');

    Array.prototype.slice.call(forms).forEach(function (form) {
        form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }

            form.classList.add('was-validated');
        }, false);
    });
})();
