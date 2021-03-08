function indiceMaiorValor(numbers) {
  let higherIndex = 0;
  for (let index in numbers) {
    if (numbers[index] > numbers[higherIndex]) {
      higherIndex = index;
    }
  }
  return higherIndex;
}

console.log(indiceMaiorValor([20, 3, 6, 700, 10, 111, 210]));