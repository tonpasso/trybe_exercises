function maiorPalavra(words) {
  let higherWord = [];
  for (let index in words) {
    if (higherWord.length < words[index].length) {
      higherWord = words[index];
    }
  }
  return higherWord;
}

console.log(maiorPalavra(['Wellington', 'José', 'Lucas', 'Nádia', 'Fernanda', 'Cairo', 'Joana']));