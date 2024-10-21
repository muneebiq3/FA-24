const exchangeRates = {
    USD: { USD: 1, EUR: 0.85, GBP: 0.75, PKR: 276.79, JPY: 110 },
    EUR: { USD: 1.18, EUR: 1, GBP: 0.88, PKR: 301.06, JPY: 130 },
    GBP: { USD: 1.33, EUR: 1.14, GBP: 1, PKR: 362.1, JPY: 145 },
    PKR: { USD: 0.0036, EUR: 0.0033, GBP: 0.0028, PKR: 1, JPY: 0.54 },
    JPY: { USD: 0.0091, EUR: 0.0077, GBP: 0.0069, PKR: 1.86, JPY: 1 }
};

function updateExchangeRate() {
    const fromCurrency = document.getElementById('fromCurrency').value;
    const toCurrency = document.getElementById('toCurrency').value;
    const rate = exchangeRates[fromCurrency][toCurrency];
    const rateLabel = document.getElementById('exchangeRateInput');

    if (rate) {
        rateLabel.textContent = `Exchange Rate: ${rate.toFixed(4)}`;
    } else {
        rateLabel.textContent = "Exchange Rate: 'N/A'"; 
    }
}

function convertCurrency(amount, fromCurrency, toCurrency) {
    const rate = exchangeRates[fromCurrency][toCurrency];
    return amount * rate;
}

document.getElementById('fromCurrency').addEventListener('change', updateExchangeRate);
document.getElementById('toCurrency').addEventListener('change', updateExchangeRate);

document.getElementById('convertBtn').addEventListener('click', function() {
    const amount = parseFloat(document.getElementById('amount').value);
    const fromCurrency = document.getElementById('fromCurrency').value;
    const toCurrency = document.getElementById('toCurrency').value;

    if (isNaN(amount) || amount <= 0) {
        alert('Please enter a valid amount');
        return;
    }

    const convertedValue = convertCurrency(amount, fromCurrency, toCurrency);
    document.getElementById('result').innerText = `Converted amount: ${convertedValue.toFixed(2)} ${toCurrency}`;
});

function switchCurrencies() {

    const fromCurrency = document.getElementById('fromCurrency');
    const toCurrency = document.getElementById('toCurrency');

    const temp = fromCurrency.value;
    fromCurrency.value = toCurrency.value;
    toCurrency.value = temp;

    updateExchangeRate();
}

document.getElementById('switchCurrenciesBtn').addEventListener('click', switchCurrencies);
