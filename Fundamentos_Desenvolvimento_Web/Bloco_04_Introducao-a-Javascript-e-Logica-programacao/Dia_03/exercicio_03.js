let n = 8;
let triangulo = '';
let reduz = n;

for (let indexLinha = 0; indexLinha < n; indexLinha++) { 
  for (let indexColuna = 0; indexColuna <= n; indexColuna++){
    if (indexColuna < reduz) {
      triangulo += ' ';
    } else {
      triangulo += '*';
    }
  }  
  console.log(triangulo);
  triangulo = '';
  reduz -= 1;    
};