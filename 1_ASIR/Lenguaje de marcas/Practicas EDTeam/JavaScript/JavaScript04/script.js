
var answer= prompt(`La capital de Andalucia es:
a. Cádiz
b. Huelva
c. Cordoba
d. Sevilla

Escribe el nombre o la letra de la respuesta`).toUpperCase().trim()



switch (answer) {
    case 'A'||'CADIZ':
        alert('Te equivocaste. Es conocida por sus derbis, su Feria y su Semana Santa')
        break;
    case 'B'||'HUELVA':
        alert('Te equivocaste. Es conocida por sus derbis, su Feria y su Semana Santa')
        break;
    case 'C'||'CORDOBA':
        alert('Te equivocaste. Es conocida por sus derbis, su Feria y su Semana Santa')
        break;
    case 'D'||'SEVILLA':
        alert('¡¡¡ES CORRECTO!!!')
        break;
    default:
        alert('No has escrito una posible respuesta. Intentalo de nuevo.')
        break;
    }


