let clickCount = 0;

const button = document.getElementById('btn');
const valor = document.querySelector('.value');


button.addEventListener('click', function() {
  clickCount += 1;
  valor.textContent = clickCount;
  console.log(clickCount);
})