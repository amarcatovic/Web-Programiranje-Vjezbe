// Deklariši JavaScript funkciju 'func' koja ispisuje 'func'
function func() {
  console.log('func');
}

// Deklariši ES6 funkciju 'foo' koja ispisuje 'foo'
const foo = () => {
  console.log('foo');
}

// Koja je razlika između JavaScript funkcija i arrow funkcija?
// 1. Sintaksa
// 2. this
let main = { 
 name: "Amar", 
 foo:() => { 
 console.log("Moje ime je " + this.name);
 }, 
 func() { 
 console.log("Moje ime je " + this.name);
 } 
};

main.foo(); 
main.func();

// 3. argumenti
let main = {  
 func(){ 
  console.log(arguments); 
 } 
}; 
main.func(1, 2, 3, 4);

let main = {  
  foo : () => { 
  console.log(...arguments); 
 } 
}; 
main.foo(1, 2, 3, 4);

// Razlika između == i ===
const x = 5;
const y = '5';

console.log(x == y); // Ispisuje true
console.log(x === y); // ispisuje false

// Floating point
console.log(0.1 + 0.2);
console.log(0.1 + 0.2 == 0.3);

const daLiSuJednaki = (x, y) => {
	return Math.abs(x - y) < Number.EPSILON;
}
console.log(daLiSuJednaki(0.1 + 0.2, 0.3));

// For Each
var niz = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
niz.forEach((i) => {
  console.log(i);
});

// Map
var niz = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const noviNiz = niz.map((i) => {
  return i * 2;
});

console.log(noviNiz);

// filter
var niz = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const noviNiz = niz.filter((i) => {
  return i % 2 === 0;
});

console.log(noviNiz);

// fetch
fetch('https://jsonplaceholder.typicode.com/todos/1')
  .then(response => response.json())
  .then(json => console.log(json));