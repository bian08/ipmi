/*
Trabajo práctico N°1
Bianca Berruet, Comisión 3. 
Tema: Mural urbano de camino a casa
*/

 PImage img;
 PFont font;
 PFont arial;   
void setup() {
  size (800,400);
  smooth();
img = loadImage("mural.jpg");
font = createFont("gloucester-mt-extra-condensed.ttf", 45, true);   
textFont(font);
arial = createFont("Arial", 20, true);
}

void draw() {
  background (255);
  //imagen original a la izquierda
  image(img, 0, 0, width/2, height); 
  
  //fondo
noStroke();
fill(255, 167, 72); rect(400, 100, 400, 200); //naranja
fill(115, 158, 232); rect(400, 0, 400, 120); //azul
fill(240, 73, 87); rect(400, 280, 400, 200); //rojo

//intersecciones para fingir degradado
fill(204, 173, 255); rect(400, 120, 400, 35); //violeta
fill(255, 204, 121); rect(400, 140, 400, 20); //naranjita bebé
fill(255, 146, 82); rect(400, 280, 400, 35); //naranjoso
fill(255, 93, 88); rect(400, 300, 400, 20); //rojito

//texto
  //español
fill (0); textFont(font);
text("Agua", 420, 180);
text("Fuego", 520, 180);
text("Tierra", 620, 180);
text("Aire", 720, 180);
  //búlgaro
textFont(arial);
text("вода", 430, 200);
text("огън", 535, 200);
text("Земя", 635, 200);
text("въздух", 715, 200);

//formas!
//FUEGOO
stroke(0); strokeWeight(4);
fill(0); ellipse(560, 95, 50, 50); //base,
triangle(560, 40, 540, 95, 580, 95); // llama
fill(115, 158, 232); ellipse(560, 100 ,40,30); //"resto del cuerpo"
fill(115, 158, 232); triangle(560, 55, 548, 95, 572, 95); // llama interior
triangle(545, 65, 530, 95, 555, 95);
triangle(575, 65, 565, 95, 590, 95);

//TIERRA
noFill(); strokeWeight(6); triangle(640, 80, 680, 80, 660, 120); //tierra
strokeWeight(3.5); line(660, 35, 660, 80); //tallo
strokeWeight(2); fill(0); stroke(0);
ellipse(653, 35, 14, 6); //hojas, IZQUIERDA
triangle(640, 35, 655, 32, 655, 38);
ellipse(667, 35, 14, 6); //DERECHA
triangle(680, 35, 665, 32, 665, 38);

//AIRE
noFill(); stroke(0); strokeWeight(3.5);
bezier(710, 80, 730, 60, 770, 100, 790, 80); //arriba
bezier(710, 95, 730, 75, 770, 115, 790, 95); //medio
bezier(710, 110, 730, 90, 770, 130, 790, 110); //abajo

//AGUA
stroke(0); fill(0); strokeWeight(4); triangle(450, 40, 440, 65, 460, 65); //punta
strokeWeight(5); ellipse(450, 85, 30, 50); //"gota"
stroke(115, 158, 232); fill(115, 158, 232); strokeWeight(7); ellipse(450, 85, 14, 30); //vacio
strokeWeight(7); triangle(450, 60, 447, 75, 453, 75); //vacio

//plantas
stroke(0);
strokeWeight(2);
fill(0);

line(440, 400, 440, 340);
line(440, 360, 430, 330);
line(440, 360, 450, 330); //1

line(520, 400, 520, 320);
line(520, 350, 510, 310);
line(520, 350, 530, 310); //2

line(600, 400, 600, 345);
line(600, 365, 590, 335);
line(600, 365, 610, 335); //3

line(680, 400, 680, 330);
line(680, 360, 670, 320);
line(680, 360, 690, 320); //4

line(760, 400, 760, 340);
line(760, 360, 750, 330);
line(760, 360, 770, 330); //5

//flores
line(480, 400, 480, 350);
ellipse(480, 340, 10, 20);
ellipse(480, 340, 20, 10);
ellipse(480, 340, 10, 10); //1

line(560, 400, 560, 330);
ellipse(560, 320, 10, 20);
ellipse(560, 320, 20, 10);
ellipse(560, 320, 10, 10); //2

line(640, 400, 640, 325);
ellipse(640, 315, 10, 20);
ellipse(640, 315, 20, 10);
ellipse(640, 315, 10, 10); //3

line(720, 400, 720, 350);
ellipse(720, 340, 10, 20);
ellipse(720, 340, 20, 10);
ellipse(720, 340, 10, 10); // 4

//pastitos
stroke(0);
strokeWeight(1.5);
line(480, 400, 475, 380);
line(480, 400, 480, 375);
line(480, 400, 485, 380); //1

line(620, 400, 615, 380);
line(620, 400, 620, 375);
line(620, 400, 625, 380); //2

line(700, 400, 695, 380);
line(700, 400, 700, 375);
line(700, 400, 705, 380); //3
}
