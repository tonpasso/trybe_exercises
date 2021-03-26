// Função 1

// function findX(string, item) {
//   let oldArray = string.split('');
//   let replace = item;
//   let newArray = [];

//   for (word of oldArray) {
//     if (word === 'x')
//     newArray.push(oldArray[word], replace);
//   }
//   console.log(newArray)
// };

// findX('Tryber x aqui', 'Bebeto');

const array = ["Android", "iOS", "Architecture", "Teach", "Run"]

function buildSkillsPhrase (paramOne) {
    const fun1 = paramInner => (
      `Tryber ${paramInner} aqui!

      Tudo bem?`
    )

    let result = `${fun1(paramOne)}

    Minhas cinco principais habilidades são:`

    array.forEach((skill, index) =>
    result = `${result}

    - ${skill}`)

    result = `
{result}

    #goTrybe
    `

    return result
}

console.log(buildSkillsPhrase("Lucas"))