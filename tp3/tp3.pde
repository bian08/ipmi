/* URL del video: https://youtu.be/l06tazCEpSc
TP#3: OpArt con Funciones y Ciclo For
Bianca Berruet, comisión 3.
Imágen #34
*/     


// General, variables
PImage img;

//Colores de relleno del cuadrado  
float r1 = 255,
g1 = 255, 
b1 = 255;
float r2 = 0,  
g2 = 0,
b2 = 0;     


float angulo = 0; // Para la rotación
int modo = 1; //Sentido de la rotación

// controlar click
boolean hayColores = false; 

//--

void setup() {
  size(800, 400);
  background(255);
      rectMode(CENTER); //los cuadrados se dibujan desde el centro
  img = loadImage("34.jpg");
}

// C/R+P
float obtenerVelocidad(float posicionY) {
      return map(posicionY, 0, height, 0.1, 2);      
}

// S/N  
void dibujarCuadrado(float lado) {
  rect(0, 0, lado, lado);
}

void draw() {
  float cant = 14;
  float tam = 400;

//Velocidad de rotación  
  float velocidad = obtenerVelocidad(mouseY);
  if (mouseX > width/2) {      
    if (modo == 1) angulo += velocidad;
    else angulo -= velocidad;
    
    //Controlar cantidad de cuadrados! 
      cant = map(mouseX, width/2, width, 14, 26);    
  }

  // FOR PRINCIPAL (Espiral grande)
  for (int i = 0; i < cant; i++) {
    float lado = map(i, 0, cant - 1, tam, 0);  

    pushMatrix();
      translate(600, 200);    
        rotate(radians(angulo + 5 * i));
 
    // DIBUJAR RELLENO PRINCIPAL (Cuadrado grande)
          if (i % 2 == 0) fill(r1, g1, b1);
    else fill(r2, g2, b2);
    noStroke();  
    dibujarCuadrado(lado);
    
    // FOR ANIDADO: CUADRADOS PEQUEÑOS (SOLO BORDE)  
    if (hayColores) {      
      noFill();       
      strokeWeight(4); // Grosor del borde

      // Color del borde par/impar
      if (i % 2 == 0) 
      stroke(r1 * 1.2, g1 * 1.2, b1 * 1.2);      
      else stroke(r2 * 1.2, g2 * 1.2, b2 * 1.2);

      // Bucle anidado: Dibuja 2 cuadrados más pequeños dentro
      for (int j = 1; j <= 2; j++) {
        pushMatrix();
            rotate(radians(j*5));  
        // un tamaño menor
         float ladoPeque = lado * (1.0 - j * 0.1);
        
        //dibuja el cuadrado pequeño
        rect(0, 0, ladoPeque, ladoPeque);
        popMatrix();
      }
    }
    popMatrix();
  }
 
    image(img, 0, 0, width/2, height);   //imagen a la izquierda
  }

// cambia colores y pone los cuadrados pequeños
void mousePressed() {
 r1 = random(100, 255);
 g1 = random(100, 255); 
 b1 = random(100, 255);
 
 r2 = random(100, 255); 
 g2 = random(100, 255); 
 b2 = random(100, 255);
  
  hayColores = true;
}

void keyPressed() {
  
  //cambiar rotacion de lado
  if (key == 'v' || key == 'V') {
    modo *= -1;
  }
  //volver de cero
  if (key == 'r' || key == 'R') {
    // Reiniciar estado original (Blanco/Negro, sin cuadrados pequeños)
    r1 = 255; g1 = 255; b1 = 255;
    r2 = 0;   g2 = 0;   b2 = 0;
    
    angulo = 0;
      hayColores = false;
  }
  
}
