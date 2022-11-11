class Casilla {
   Bomba bomba;
  int posX;
  int posY;
  int posX2;
  int posY2;
  int tam;
  PImage imagen1;
  boolean casillaPresionada; 
   PImage imagen2;
  float  numeroRandomCasillas;
   int cantCasillas;
  int [] posXmina;
  int [] posYmina;
  Casilla(int _posX, int _posY, int _tam, int _cantCasillas) {
    posX = _posX;
    posY = _posY;
    tam = _tam;
    cantCasillas =  _cantCasillas;
    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
    cantCasillas = _cantCasillas;   
    numeroRandomCasillas = round(random(100));
    bomba = new Bomba(posX, posY, tam, numeroRandomCasillas);
    casillaPresionada =false;
      posXmina = new int[cantCasillas];
      posYmina = new int[cantCasillas];
    for(int i=0; i<cantCasillas; i++){
    for(int j=0; j<cantCasillas; j++){ 
      if( numeroRandomCasillas < 30){
      posXmina[i] = posX;      
      posYmina[j] = posY;
    }
        }
         }
  }
  

  void dibujar() {    
       
       if (casillaPresionada == true){ 
         for(int i=0; i<cantCasillas; i++){
    for(int j=0; j<cantCasillas; j++){ 
          image(imagen2, (posXmina[i] * tam)+15, (posYmina[j] * tam)+100, tam, tam);
    }
         }
           } else{ 
      image(imagen1, (posX * tam)+15, (posY * tam)+100, tam, tam);
      } 
  
  }

  
void mousePresionado(){ 
  posX2 = floor(map(mouseX, 15, 313, 0, cantCasillas));
  posY2 = floor(map(mouseY, 100, 397, 0, cantCasillas));
   for(int i=0; i<cantCasillas; i++){
    for(int j=0; j<cantCasillas; j++){ 
      if( numeroRandomCasillas < 30 && posX2 == posXmina[i] && posY2 == posYmina[j]){
       casillaPresionada = true; 
      }
    }
   }
}
}
