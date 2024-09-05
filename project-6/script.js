// Obtener los elementos del DOM
const userInput = document.getElementById("user-input");
const resultsDiv = document.getElementById("results-div");
const checkBtn = document.getElementById("check-btn");
const clearBtn = document.getElementById("clear-btn");

// Función para validar el número de teléfono
const checkInput = (input) => {
    const validPatterns = [
        /^\+34 \d{2} \d{3} \d{45}$/, // +34 91 123 45 67
        /^\+34 \d{9}$/,               // +34123456789
        /^\d{2} \d{3} \d{2} \d{2}$/,  // 91 123 45 67
        /^\d{9}$/,                    // 123456789
        /^\d{3} \d{2} \d{2} \d{2}$/,
    ];

    const isValid = validPatterns.some(pattern => pattern.test(input));
    const isInvalid =  /[^0-9\s\+\-]|^\+34\s\d{2}\s\d{3}\s\d{2}\s\d{2}$/;

    if (isValid) {
        resultsDiv.textContent = `Número español válido: ${input}`;
    } else if (isInvalid) {
        resultsDiv.textContent = `Número español no válido: ${input}`;
    } else {
        resultsDiv.textContent = `Número español no válido: ${input}`;
    }
};

// Evento para el botón de verificación
checkBtn.addEventListener("click", () => {
    const inputValue = userInput.value.trim(); 
    if (inputValue === "" ) {
        alert("Por favor proporcione un número de teléfono");
    } else {
        checkInput(inputValue); 
    }
});

// Evento para el botón de limpiar
clearBtn.addEventListener("click", () => {
    userInput.value = ""; 
    resultsDiv.textContent = ""; 
});