let n = 5;

for (let indexLinha = 1; indexLinha <= n; indexLinha++) { 
  let quadrado = " ";
  for (let indexColuna = 1; indexColuna <= n; indexColuna++){
    quadrado += "*";
  }
  console.log(quadrado);
};