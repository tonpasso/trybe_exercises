let custoProduto = 25;
let valorVenda = 41;


if (custoProduto >= 0 && valorVenda >= 0) {
  let valorCustoTotal = custoProduto * 1.20;
  let lucro = (valorVenda - valorCustoTotal) * 1000;
  console.log(`Valor do lucro: ${lucro}`);
} else {
  console.log('Valor de entrada incorreto!');
};
