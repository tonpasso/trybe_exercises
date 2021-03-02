
let n = 8;
let triangulo = '';
let posicao = n;

for (let indexLinha = 0; indexLinha < n; indexLinha++) { 
  for (let indexColuna = 0; indexColuna <= n; indexColuna++){
    if (indexColuna < posicao) {
      triangulo += ' ';
    } else {
      triangulo += '* ';
    }
  }  
  console.log(triangulo);
  triangulo = '';
  posicao -= 1;    
};
