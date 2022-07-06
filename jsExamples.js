function exampleFunction() {
    console.log("Hello, World!")
}


class Cat {
    constructor(name){
        this.name = name
    }

    sayName(){
        console.log(this.name)
    }
}

const wednesday = new Cat("Wednesday")
wednesday.sayName()
