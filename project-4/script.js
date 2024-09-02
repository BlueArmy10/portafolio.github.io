/* Obtener el texto del input */
function getInputText() {
    return document.getElementById('text-input').value;
}

/* Limpiar el texto */
function cleanText(text) {
    return text.replace(/[\W_]/g, '').toLowerCase(); 
}

/* Invertir el texto */
function reverseText(text) {
    return text.split('').reverse().join('');
}

/* Verificar y mostrar el resultado */
function checkResult(inputText, cleanedText, reversedText) {
    const resultDiv = document.getElementById('result');
    const isPolindrome = cleanedText === reversedText;

    if (isPolindrome) {
        resultDiv.textContent = `"${inputText}" es un palíndromo`;
        resultDiv.style.color = 'green';
    } 
    else {
        resultDiv.textContent = `"${inputText}" no es un palíndromo`;
        resultDiv.style.color = 'red';
    }
    resultDiv.style.display = 'block'; 
}

/* Función principal */
function checkPalindrome() {
    const inputText = getInputText();
     if (inputText.trim() === "") {
        alert("Por favor, ingrese un valor");
        return; 
    }
    const cleanedText = cleanText(inputText); 
    const reversedText = reverseText(cleanedText); 
    checkResult(inputText, cleanedText, reversedText); 
}
