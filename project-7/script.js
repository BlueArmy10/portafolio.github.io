// Variables Globales
const price = 19.5;
let cid = [
    ['1 CENT', 5.00],
    ['2 CENT', 5.00],
    ['5 CENT', 5.00],
    ['10 CENT', 5.00],
    ['20 CENT', 10.00],
    ['50 CENT', 10.00],
    ['1 €', 20.00],
    ['2 €', 10.00],
    ['5 €', 25.00],
    ['10 €', 30.00],
    ['20 €', 50.00],
    ['50 €', 100.00],
    ['100 €', 200.00],
    ['200 €', 0.00]
];

const currencyUnit = [
    ['1 cent.', 0.01],
    ['2 cent.', 0.02],
    ['5 cent.', 0.05],
    ['10 cent.', 0.10],
    ['20 cent.', 0.20],
    ['50 cent.', 0.50],
    ['1 €', 1.00],
    ['2 €', 2.00],
    ['5 €', 5.00],
    ['10 €', 10.00],
    ['20 €', 20.00],
    ['50 €', 50.00],
    ['100 €', 100.00]
];

// Función para calcular el total de efectivo en el cajón
function getTotalCid(cid) {
    return cid.reduce((total, item) => total + item[1], 0);
}

// Función para calcular el cambio debido
function calculateChange(changeDue, cid) {
    let changeArray = [];
    for (let i = currencyUnit.length - 1; i >= 0; i--) {
        let coinName = currencyUnit[i][0];
        let coinValue = currencyUnit[i][1];
        let availableInDrawer = cid[i][1];
        let amountToReturn = 0;

        while (changeDue >= coinValue && availableInDrawer > 0) {
            changeDue -= coinValue;
            changeDue = parseFloat(changeDue.toFixed(2)); // Corregir problemas de precisión de punto flotante
            availableInDrawer -= coinValue;
            amountToReturn += coinValue;
        }

        if (amountToReturn > 0) {
            changeArray.push([coinName, amountToReturn]);
        }
    }

    return { changeArray: changeArray, remainingChange: changeDue };
}

// Función principal para verificar el estado del registro de efectivo
function checkCashRegister(price, cash, cid) {
    let changeDue = cash - price;
    let totalCid = getTotalCid(cid);

    // Verificar si el efectivo total en el cajón es menor que el cambio debido
    if (totalCid < changeDue) {
        return { status: 'FONDOS INSUFICIENTES', change: [] };
    }

    // Verificar si el efectivo total en el cajón es exactamente igual al cambio debido
    if (parseFloat(totalCid.toFixed(2)) === parseFloat(changeDue.toFixed(2))) {
        let changeArray = cid.filter(item => item[1] > 0); 
        return { status: 'CERRADO', change: changeArray };
    }

    // Calcular el cambio y verificar si se puede devolver el cambio exacto
    let { changeArray, remainingChange } = calculateChange(changeDue, cid);

    if (remainingChange > 0) {
        return { status: 'FONDOS INSUFICIENTES', change: [] };
    }

    return { status: 'ABIERTO', change: changeArray };
}

// Interacción con el DOM
document.getElementById('purchase-btn').addEventListener('click', function () {
    let cashInput = document.getElementById('cash').value;
    let cash = parseFloat(cashInput);
    let changeDueElement = document.getElementById('change-due');

    // Validar si el cliente ingresó una cantidad válida
    if (isNaN(cash)) {
        alert('Por favor, ingrese un valor válido de dinero.');
        return;
    }

    if (cash < price) {
        alert('El cliente no tiene suficiente dinero para comprar el artículo.');
        return;
    }

    // Si el cliente paga con el monto exacto
    if (cash === price) {
        changeDueElement.textContent = "No hay cambio. EL cliente pagó con dinero exacto";
        return;
    }

    // Calcular el cambio y mostrar el resultado
    let result = checkCashRegister(price, cash, cid);

    let statusMessage = `<strong style='color: #8d9cc6'>ESTADO:</strong> ${result.status}<br><br>`;
    let changeMessage = '';

    if (result.status === 'ABIERTO') {
        changeMessage = "<strong style='color: #8d9cc6'>CAMBIO A DEVOLVER:</strong><br>";
        result.change.forEach(item => {
            changeMessage += `<strong>${item[0]}:</strong> €${item[1].toFixed(2)}<br>`;
        });
    } else if (result.status === 'CERRADO') {
        changeMessage = "<strong>Cambio:</strong><br>";
        result.change.forEach(item => {
            changeMessage += `<strong>${item[0]}:</strong> €${item[1].toFixed(2)}<br>`;
        });
    } else if (result.status === 'FONDOS INSUFICIENTES') {
        changeMessage = "No se puede devolver el cambio porque no hay suficiente dinero en la caja.";
    }

    changeDueElement.innerHTML = `${statusMessage}${changeMessage}`;
});

// Función para mostrar el precio en HTML
const displayPrice = (price) => {
    const priceElement = document.getElementById('price');
    priceElement.textContent = `€${price.toFixed(2)}`;
};

// Función para mostrar el contenido del cajón en HTML
const displayChange = (cid) => {
    const cashInDrawer = document.getElementById('cash-in-drawer');
    let html = '';
    cid.forEach(item => {
        html += `<p><span class="bold">${item[0]}:</span> €${item[1].toFixed(2)}</p>`;
    });
    cashInDrawer.innerHTML = html;
};

// Mostrar el precio y el contenido del cajón al cargar la página
displayPrice(price);
displayChange(cid);
