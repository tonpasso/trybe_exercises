let salarioBruto = 5189.00;
let salarioBase;
let aliquotaInss;
let salarioLiquido;


if (salarioBruto <= 1556.94) {
  salarioBase = salario * 0.92;
} else if (salarioBruto <= 2594.92) {
  salarioBase = salarioBruto * 0.91;
} else if (salarioBruto <= 5189.82) {
  salarioBase = salarioBruto * 0.89;
} else {
  salarioBase = salarioBruto - 570.88;
}

if (salarioBase <= 1903.98) {
  aliquotaInss = 0;
} else if (salarioBase <= 2826.65) {
  aliquotaInss = salarioBase * 0.075 - 142.80;
} else if (salarioBase <= 3751.05) {
  aliquotaInss = salarioBase * 0.15 - 354.80;
} else if (salarioBase <= 4664.68) {
  aliquotaInss = salarioBase * 0.225 - 636.13;
} else {
  aliquotaInss = salarioBase * 0.275 - 869.36;
}

salarioLiquido = salarioBase - aliquotaInss;

console.log(`Salário líquido = ${salarioLiquido.toFixed(2)}`);