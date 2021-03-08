function verificaString(word, ending) {
  let reverseWord = word.split('').reverse('').join('');
  let reverseEnding = ending.split('').reverse('').join('');

  for (let index = 0; index < reverseEnding.length; index += 1) {
    if (reverseEnding[index] === reverseWord[index]) {
      return true;
    } else {
      return false;
    }
  }
}

console.log(verificaString('trybe', 'by'))
console.log(verificaString('wellington', 'ton'))