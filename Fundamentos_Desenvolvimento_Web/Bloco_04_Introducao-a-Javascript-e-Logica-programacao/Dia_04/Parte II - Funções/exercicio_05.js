function maisRepete(numbers) {
  let repeatNumber = 0;
  let countNumber = 0;
  let indexRepeat = 0;
  for (let index = 0; index < numbers.length; index +=1) {
    let checkNumber = numbers[index];
    for (let index2 = 0; index2 < numbers.length; index2 +=1) {
      if (checkNumber === numbers[index2]) {
        countNumber +=1;
      }
    }
    if (countNumber > repeatNumber) {
      repeatNumber = countNumber;
      indexRepeat = index;
    }
    countNumber = 0;
  }
  return numbers[indexRepeat];
}

console.log(maisRepete([2, 3, 2, 5, 8, 2, 3, 5, 1, 9, 5, 5]));