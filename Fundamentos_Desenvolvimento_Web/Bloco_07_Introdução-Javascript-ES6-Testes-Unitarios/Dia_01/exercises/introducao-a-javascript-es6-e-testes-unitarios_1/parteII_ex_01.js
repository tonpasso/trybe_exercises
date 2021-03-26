
function fatorial(number) {
  let fatorial = number;
  for (index = 1; index < number; index += 1) {
    fatorial *= index;
  }
  return fatorial;
}

console.log(factorial(5))

// recursiva
// const factorial = number => number > 1 ? number * factorial(number - 1) : 1



