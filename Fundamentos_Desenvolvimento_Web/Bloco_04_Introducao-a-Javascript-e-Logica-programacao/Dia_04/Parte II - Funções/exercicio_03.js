function indiceMenorValor(numbers) {
  let lowerIndex = 0;
  for (let index in numbers) {
    if (numbers[index] < numbers[lowerIndex]) {
      lowerIndex = index;
    }
  }
  return lowerIndex;
}

console.log(indiceMenorValor([20, 3, 6, 700, 10, 111, 0, 210, -3, 0]));