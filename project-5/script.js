const numberInput = document.getElementById("number");
const convertButton = document.getElementById("convert-btn");
const output = document.getElementById("output")

const valores = [
        { valor: 1000, simbolo: 'M' },
        { valor: 900, simbolo: 'CM' },
        { valor: 500, simbolo: 'D' },
        { valor: 400, simbolo: 'CD' },
        { valor: 100, simbolo: 'C' },
        { valor: 90, simbolo: 'XC' },
        { valor: 50, simbolo: 'L' },
        { valor: 40, simbolo: 'XL' },
        { valor: 10, simbolo: 'X' },
        { valor: 9, simbolo: 'IX' },
        { valor: 5, simbolo: 'V' },
        { valor: 4, simbolo: 'IV' },
        { valor: 1, simbolo: 'I' }
    ];

function convert(number, valores){
  let resultado = '';

  for (const {valor, simbolo} of valores) {
    while (number >= valor) {
      resultado += simbolo;
      number -= valor;
    }
  }
   return resultado;
}

convertButton.addEventListener("click", () => {
  const number = parseInt(numberInput.value);
  if (isNaN(number)){ 
    output.textContent = "Por favor, ingrese un número válido.";
     output.style.display = "block";
  } else if (number < 1) {
    output.textContent = "Por favor, ingrese un número mayor o igual a 1."
  } else if (number >= 4000) {
    output.textContent = "Por favor, ingrese un número menor o igual a 3999.";
     output.style.display = "block";
  } else  {
    const romanNumeral = convert(number, valores);
    output.textContent = `El número romano es: ${romanNumeral}`;
     output.style.display = "block";
  }
});