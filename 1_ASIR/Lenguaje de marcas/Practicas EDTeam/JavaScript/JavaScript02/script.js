let answer = prompt('¿Cual es la capital de Andalucia?').toUpperCase().trim()

let message = answer === 'SEVILLA'
                    ? '¡Correcto!'
                    : '¡Te equivocaste! La respuesta es Sevilla'
alert(message)

