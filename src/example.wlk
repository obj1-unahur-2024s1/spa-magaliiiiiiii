/** First Wollok example */ 
//objetoss que respetan el mismo contrato,
// esta bueno que quede adentro de un mismo archivo
object olivia {
	var concentracion = 6


/// para que funcione el polimorfismo	
	method recirMasajes(){
		concentracion=0.max(concentracion+3) 
		}
	method discutir(){
		concentracion=0.max( concentracion -1)
		}
		
/// otras cosas que puede hacer olivia
	method gradoDeConcentracion(){return concentracion}
	
	method banioDeVapor(){concentracion= 9}
}

object bruno{
	var esFeliz= true
	var tieneSed= false
	var peso= 55000 // 55 kilos
	
	
	// para que f(x) el polimorfismo
	method recirMasajes(){  esFeliz = true}
	method banioDeVapor(){
		peso = 0.max(peso - 500)
		tieneSed= true}
		
     ///// otras cosas que hace bruno
	
	method verNoticiero(){
		esFeliz= false
	}
	method tomaAgua(){
		tieneSed= false
	}
	method comer(fideos){ fideos.comer()}
	
	method peso() {return peso	}
	method correr() {peso= peso-300}
}
///// 

object ramiro {
	var contractura=0
	var tienePielGrasosa=false
	
	method tienePielGrasosa(){return tienePielGrasosa}
	method gradoDeContractura(){return contractura}
	
	//para que funcione el polimorfismo
	method recirMasajes(){ contractura= 0.max(contractura-2)}
	method banioDeVapor(){ tienePielGrasosa= false}
	
	
	//// otras cosas que puede hacer ramiro
	method comerBicMac(){tienePielGrasosa = true}
	
	method trabajar(){contractura+=1 // baja a la fosa
		tienePielGrasosa=true  }
	
	method juegaALPadlle(){contractura+=3}
	
	method diaDeTrabajo(){
		self.trabajar()
		self.comerBicMac()
		self.trabajar()
	}
	
}


object spa{
	method atender(unaPersona){
		unaPersona.recibirMasajes()
		unaPersona.banioDeVapor()
	}
}