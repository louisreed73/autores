
// const cookieParser=require("cookie-parser")

const pepe="Hola a todos"

const {log:l}=console;

function Person(name,edad) {
    this.name=name;
    this.edad=edad;
}


let luis=new Person("luis",47);

function Persona(c) {
    this.ciudad=c

}


Object.assign(Person.prototype,{
    getName() {
        return this.name
    }
})


l(luis)

// Object.appendChain(luis,new Persona("Madrid"))

l(luis.getName())

















