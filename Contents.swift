//-------------------------
//---Velocimetro Digital---
//-------------------------
//-----Abelardo castro-----
//-------------------------

import UIKit


enum Velocidades : Int
{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(VelocidadInicial : Velocidades)
    {
        self = VelocidadInicial
    }
}


class Auto
{

    var velocidad : Velocidades
    
    init()
    {
       velocidad  = Velocidades(VelocidadInicial: Velocidades.Apagado)
    }
    
    
    
    func CambioDeVelocidad() -> (actual : Int, VelocidadEnCadena : String)
    {
        var velocidadActual : String
        var auxiliar : Int
        
        
        switch velocidad
        {
            
        case .Apagado:
            auxiliar = velocidad.rawValue
            velocidadActual = "Apagado"
            velocidad = Velocidades.VelocidadBaja
            
            break;
            
        case .VelocidadBaja :
            auxiliar = velocidad.rawValue
            velocidadActual = "Velocidad Baja"
            velocidad = Velocidades.VelocidadMedia
            
            break;
            
        case .VelocidadMedia:
            auxiliar = velocidad.rawValue
            velocidadActual = "Velocidad Media"
            velocidad = Velocidades.VelocidadAlta
            
            break;
            
        case .VelocidadAlta:
            auxiliar = velocidad.rawValue
            velocidad = Velocidades.VelocidadMedia
            velocidadActual = "Velocidad Alta"
            break;
            
        }
        
        return (auxiliar,velocidadActual)
    }
    
}


var auto = Auto()

for var i = 0; i < 20; i++
{
 print(auto.CambioDeVelocidad())
}

