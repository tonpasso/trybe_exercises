// Exercicios 1, 2, 3

const readline = require('readline-sync');

// const peso = readline.questionInt('Digite seu peso em kg: ');
// const altura = readline.questionInt('Digite sua altura em cm: ');

// function imcCalculator() {
//   const alturaQuadrado = Math.pow(altura / 100, 2);

//   console.log(`Altura ${altura}cm, peso ${peso}.`)

//   const imc = (peso / alturaQuadrado).toFixed(2);

//   console.log(`Seu IMC é: ${imc}`);
// }

// Exercicio 4 e 5

const peso = readline.questionFloat('Digite seu peso em kg: ');
const altura = readline.questionInt('Digite sua altura em cm: ');

function imcCalculator() {
  const alturaQuadrado = Math.pow(altura / 100, 2);

  console.log(`Altura ${altura}cm, peso ${peso}.`)

  const imc = (peso / alturaQuadrado).toFixed(2);

  console.log(`Seu IMC é: ${imc}`);

  if (imc < 18.5) {
    console.log('Situação: Abaixo do peso (magreza)');
    return;
  }

  if (imc >= 18.5 && imc < 25) {
    console.log('Situação: Peso normal');
    return;
  }

  if (imc >= 25 && imc < 30) {
    console.log('Situação: Acima do peso (sobrepeso)');
    return;
  }

  if (imc >= 30 && imc < 35) {
    console.log('Situação: Obesidade grau I');
    return;
  }

  if (imc >= 35 && imc < 40) {
    console.log('Situação: Obesidade grau II');
    return;
  }

  console.log('Situação: Obesidade graus III e IV');
}

imcCalculator();

