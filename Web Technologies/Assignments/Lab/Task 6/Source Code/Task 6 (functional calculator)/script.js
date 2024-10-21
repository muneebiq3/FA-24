let currentInput = '0'; // Stores the current number being input
let operator = ''; // Stores the last operator clicked
let previousInput = ''; // Stores the previous number input
let result = 0; // Stores the result of the ongoing operation
let isCalculated = false; // To track if the last action was '='

const display = document.getElementById('display'); // The main display for the current number/result
const preview = document.getElementById('preview'); // The preview display for showing the ongoing operation

// Update both the preview and main display
function updateDisplay() {
  // Update the main display with the current input or result
  display.textContent = currentInput || '0';

  // If we have an operator and previous input, show the full operation in the preview
  if (operator && previousInput) {
    preview.textContent = `${previousInput} ${operator} ${currentInput !== '' ? currentInput : ''}`;
  } else {
    preview.textContent = currentInput; // Default case, just show the current input
  }
}

// Append number to the current input
function appendNumber(number) {
  if (currentInput === '0' || isCalculated) {
    currentInput = number.toString(); // Replace the current input after a result
    isCalculated = false;
  } else {
    currentInput += number.toString();
  }
  updateDisplay();
}

// Append decimal point
function appendDecimal() {
  if (!currentInput.includes('.')) {
    currentInput += '.';
    updateDisplay();
  }
}

// Clear the current entry (CE button)
function clearEntry() {
  currentInput = '0';
  updateDisplay();
}

// Clear everything (C button)
function clearAll() {
  currentInput = '0';
  previousInput = '';
  operator = '';
  result = 0;
  isCalculated = false;
  updateDisplay();
}

// Toggle positive/negative sign
function toggleSign() {
  currentInput = (parseFloat(currentInput) * -1).toString();
  updateDisplay();
}

// Add operator and store previous input
function addOperator(op) {
  if (previousInput && operator && currentInput !== '') {
    // If there's already an operator and previous input, calculate the result first
    calculate();
  }

  operator = op; // Set the operator
  previousInput = currentInput; // Store the current input as the previous input
  currentInput = ''; // Clear the current input so the next number can be entered
  isCalculated = false; // We're in the middle of a calculation
  updateDisplay(); // Update both the display and preview to show the operator
}

// Perform the calculation when '=' or another operator is clicked after the second operand
function calculate() {
  if (!previousInput) return; // Skip if no previous input

  const prev = parseFloat(previousInput);
  const current = parseFloat(currentInput) || prev; // Use the current input or fallback to previous input

  switch (operator) {
    case '+':
      result = prev + current;
      break;
    case '-':
      result = prev - current;
      break;
    case 'X':
      result = prev * current;
      break;
    case '÷':
      result = prev / current;
      break;
    default:
      return;
  }

  currentInput = result.toString(); // Display the result as the new current input
  previousInput = ''; // Clear previous input after calculation
  operator = ''; // Clear the operator
  isCalculated = true; // Mark that the calculation is complete
  updateDisplay();
}

// Handle what happens when '=' is clicked
function handleEquals() {
  if (previousInput && operator) {
    calculate(); // Perform the calculation

    // Show the full operation in the preview (e.g., "9 + 9 =")
    preview.textContent = `${previousInput} ${operator} ${currentInput} =`;

    // Mark that calculation has completed, ready for new input
    isCalculated = true;
  }
}

// Handle special operations like square root and reciprocal
function operate(op) {
  let result;
  const current = parseFloat(currentInput);

  switch (op) {
    case 'sqrt':
      result = Math.sqrt(current);
      break;
    case 'square':
      result = Math.pow(current, 2);
      break;
    case '1/x':
      result = 1 / current;
      break;
    default:
      return;
  }

  currentInput = result.toString();
  updateDisplay();
}
