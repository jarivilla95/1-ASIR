let age = parseInt(prompt('Dime tu edad'),10)

if(age){
    if(age >=18) {
        alert('Eres mayor de edad')
    } else {
        alert('Aun no eres mayor de edad')
    }
}else{
    age = parseInt(prompt('Tu edad debe ser escrita en numero'),10)
}


