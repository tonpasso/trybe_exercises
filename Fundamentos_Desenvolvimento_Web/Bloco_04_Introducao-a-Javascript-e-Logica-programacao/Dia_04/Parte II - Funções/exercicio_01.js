function verificaPalindrome(word) {
  let reverse = word.split('').reverse('').join('');
  if (reverse === word) {
    return true;
  } else {
    return false;
  }
};

console.log(verificaPalindrome('arara'));
console.log(verificaPalindrome('desenvolvimento'));
