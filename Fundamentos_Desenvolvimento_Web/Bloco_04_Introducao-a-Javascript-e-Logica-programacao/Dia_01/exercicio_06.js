let pecaXadrez = "cavalo";

switch (pecaXadrez.toLowerCase()) {
  case "peão":
    console.log("Peão: Apenas uma casa para frente, exceto no primeiro movimento que podem ser duas casas.");    
    break;
  case "bispo":
    console.log("Bispo: Qualquer número de casas em uma linha reta diagonal.");    
    break;

  case "torre":
    console.log("Torre: Qualquer número de casas em linha reta horizontal e diagonal.");    
    break;

  case "cavalo":
    console.log("Cavalo: Movimento em \"L\", pode pular outras peças.");    
    break;

  case "rainha":
    console.log("Rainha: Move-se qualquer número de casas em linha reta na vertical, diagonal ou horizontal.");    
    break;
  
  case "rei":
    console.log("Rei: Move-se uma casa em qualquer direção.");   
    break;

  default:
    console.log("Peça inexistente.");
    break;
};