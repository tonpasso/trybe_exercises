function somatorio(number) {
  let sum = 0;
  for (index = 1; index <= number; index +=1) {
    sum += index;
  }
  return sum;
}

console.log(somatorio(7));