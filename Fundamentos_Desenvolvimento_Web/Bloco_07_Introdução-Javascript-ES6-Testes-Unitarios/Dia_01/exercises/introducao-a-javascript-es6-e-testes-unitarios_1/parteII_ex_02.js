
let longestWord = ("Antônio foi no banheiro e não sabemos o que aconteceu") // retorna 'aconteceu'

let words = longestWord.split(' ');
let bigWord = '';

for (word of words) {
  if (word.trim().length > bigWord.length) {
    bigWord = word.trim();
  }
}

console.log(bigWord);