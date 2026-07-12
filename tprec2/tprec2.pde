/* TP#2 — Variables y Condicionales - Recuperatorio
Bianca Berruet, comisión 3, legajo 127521/1
Tema: música */

//importantes para transiciones.
int pantalla = 0;
boolean inicioPresentacion = false;
int tiempoPantalla;
int duracion = 13000;

// Animaciones
float alphaTitulo = 0;
float alphaImagen = 0;
float alphaTexto = 0;

//imagenes
PFont DeterminationFont;
PImage nine;
PImage spriteTobyFox;
PImage cora;
PImage toby;
PImage piano;
PImage logout;
PImage utcast;
PImage utfoto;
PImage UTSoundtrack;
PImage fondo;
PImage rojo;
PImage logo;
PImage delta;
PImage tres;
PImage flor;
PImage deltarune;

  void setup () {
 size (640, 480);
 tiempoPantalla = millis();
 DeterminationFont = loadFont("Determination.vlw");
 textFont(DeterminationFont);

  //imagenes x2
  nine  = loadImage("nine.jpg");
  spriteTobyFox = loadImage("spriteTobyFox.png"); //portada
   cora = loadImage("cora.jpg"); //portada
  toby = loadImage("toby.jpg"); //bio
  piano = loadImage("piano.jpg"); //especial
  utcast = loadImage ("utcast.png"); //undertale
  utfoto = loadImage ("utfoto.jpg"); //undertale 
  logout = loadImage ("logout.png"); //undertale
  UTSoundtrack = loadImage("UTSoundtrack.png"); //musica ut
   fondo = loadImage("fondo.jpg"); //dest
  rojo = loadImage("ROJO.jpg");  //dest
    logo = loadImage("logo.png");//DELTARUNE
  delta = loadImage("delta.png"); //DELTARUNE
  tres = loadImage("tres.jpg"); //DELTARUNE
   flor = loadImage("flor.png"); //DELTARUNE
   deltarune = loadImage("deltarune.png");

}

void draw() {
background(0);
 //TRANSICIÓN
if(inicioPresentacion == false){
  portada();
  }

  else{

    if(millis()-tiempoPantalla>duracion){
      if(pantalla<8){
        pantalla++;
      }
      tiempoPantalla=millis();

alphaTitulo = 0;
alphaImagen = 0;
alphaTexto = 0;

    }

    if(pantalla==1){
      biografia();

    }

    else if(pantalla==2){
      especial();

    }

    else if(pantalla==3){
      ut();

    }

    else if(pantalla==4){
      utmusica();

    }

    else if(pantalla==5){
      musicadest();

    }

    else if(pantalla==6){
      deltarune();

    }

    else if(pantalla==7){
      dontforget();

    }

    else if(pantalla==8){
      finalPresentacion();

    }

}

}

//PRIMER PANTALLA
void portada(){
  background(0);
  imagenFade(spriteTobyFox,400,290,200,200);
   imagenFade(cora,0,10,250,250);
 tituloFade("TOBY FOX", width/2, height/2-50, 60);

  fill(100);
  rect(220,300,200,50);

  fill(255,255,0);
  textAlign(CENTER,CENTER);
  textSize(30);
  text("START",320,325);

}

void mousePressed(){
  // BOTON COMENZAR
  if(!inicioPresentacion){

    if(mouseX>220 &&
       mouseX<420 &&
       mouseY>300 &&
       mouseY<350){

      inicioPresentacion=true;
      pantalla=1;
      tiempoPantalla=millis();

alphaTitulo = 0;
alphaImagen = 0;
alphaTexto = 0;

    }

  }

  // BOTON RESET

  if(pantalla==8){

    if(mouseX>220 &&
       mouseX<420 &&
       mouseY>300 &&
       mouseY<360){

      pantalla=0;
      inicioPresentacion=false;
      tiempoPantalla=millis();

alphaTitulo = 0;
alphaImagen = 0;
alphaTexto = 0;

    }
}
}

//SEGUNDA PANTALLA
void biografia() {
  background(0);
  tituloFade("¿Quién es?", width/2, 20, 60);
  imagenFade(toby,220,260,200,200);
 
  textAlign(CENTER,TOP);

  String bio =
  "Toby Fox (Robert F. Fox) es un desarrollador \n"+
  "de videojuegos y compositor estadounidense, \n"+
  "nacido el 11 de octubre de 1991. Alcanzó fama \n"+
  "mundial al crear Undertale (2015) y Deltarune \n"+
  "(2018), encargándose del desarrollo y música. \n"+
  "Antes, colaboró con Homestuck y creó hacks \n"+
  "de EarthBound.";

  if(alphaImagen>=250 && alphaTexto<255){
  alphaTexto+=5;
}

fill(255,alphaTexto);
textSize(16);
text(bio,width/2,100);

}

//tercer pantalla
void especial(){
  background(0);
  tituloFade("¿Qué hace especial su música?",width/2,20,35);
  imagenFade(piano,0,60,300,350);

  textAlign(LEFT,TOP);

  String esp1 =
  "Su obra destaca por el uso de \n"+
  "leitmotivs: melodías recurrentes \n"+
  "que evolucionan para representar \n"+
  "personajes, lugares o emociones. \n"+
  "Estos motivos reaparecen a lo largo \n"+
  "de la trama con variaciones de \n"+
  "ritmo, instrumentación o tonalidad, \n"+
  "adaptándose al contexto narrativo \n"+
  "y reforzando la conexión entre los \n"+
  "momentos clave.";

  String esp2 =
  "Además, fusiona el chiptune \n"+
  "(sonido de consolas retro) con \n"+
  "géneros como rock, jazz, \n"+
  "electrónica y música orquestal. \n"+
  "Esta mezcla versátil le permite \n"+
  "crear desde batallas intensas hasta \n"+
  "composiciones emotivas, utilizando \n"+
  "el sonido para definir la personalidad \n"+
  "de los personajes y la atmósfera de \n"+
  "cada escena.";

 if(alphaImagen>=250 && alphaTexto<255){
  alphaTexto+=5;
}

fill(255,alphaTexto);
textSize(15);

text(esp1,300,80);
text(esp2,300,280);
}

//CUARTA PANTALLA
void ut(){
  background(0);
 logoFade(logout,20,20,600,58);
imagenFade(utfoto,360,90,250,200);
imagenFade(utcast,40,260,250,230);

  textAlign(LEFT,TOP);

  String ut1 =
  "Undertale es un videojuego de rol \n"+
  "independiente creado por Toby Fox, \n"+
  "quien desarrolló el juego y compuso \n"+
  "íntegramente su banda sonora utilizando \n"+
  "FL Studio. Como músico autodidacta, \n"+
  "creó más del 90 % de las canciones \n"+
  "específicamente para el juego, \n"+
  "inspirándose en títulos como EarthBound \n"+
  "y otros RPG clásicos.";

  String ut2 =
  "La música fue compuesta durante el \n"+
  "desarrollo del juego e incluso, en \n"+
  "muchas ocasiones, antes de programar \n"+
  "las escenas. Esto permitió que las \n"+
  "composiciones ayudaran a definir el \n"+
  "ritmo y la carga emocional de la \n"+
  "historia.";

if(alphaImagen>=250 && alphaTexto<255){
  alphaTexto+=5;
}

fill(255,alphaTexto);
textSize(14);

text(ut1,20,100,240);
text(ut2,330,300,240);

}

//QUINTA PANTALLA
void utmusica(){

  background(0);
  tituloFade("Música en Undertale",320,20,50);
  imagenFade(UTSoundtrack,180,70,280,280);

  textAlign(LEFT,TOP);

  String textoIzq =
  "La banda sonora \n"+
  "utiliza leitmotivs: \n"+
  "melodías que \n"+
  "reaparecen y \n"+
  "evolucionan para \n"+
  "representar \n"+
  "personajes, lugares \n"+
  "y momentos clave. \n"+
  "Cada motivo cuenta \n"+
  "una parte de la \n"+
  "historia y conecta \n"+
  "emocionalmente al \n"+
  "jugador con el \n"+
  "mundo del juego.";

  String textoDer =
  "Combina estilos \n"+
  "como chiptune, \n"+
  "rock, jazz, \n"+
  "electrónica y \n"+
  "música orquestal. \n"+
  "Temas icónicos \n"+
  "como 'Megalovania', \n"+
  "'Hopes and Dreams' \n"+
  "y 'Fallen Down' \n"+
  "trascendieron el \n"+
  "videojuego, \n"+
  "volviéndose famosos \n"+
  "en la cultura \n"+
  "popular.";

  
  textAlign(CENTER,TOP);

  String cita =
  "\"Most of Undertale's music was made using\n"+
  "free soundfonts + synths, but everyone likes it.\n"+
  "That's cool.\"\n"+
  "— Toby Fox (19 de septiembre de 2015)";

  if(alphaImagen>=250 && alphaTexto<255){
  alphaTexto+=5;
}

fill(255,alphaTexto);

textAlign(LEFT,TOP);
textSize(13);

text(textoIzq,20,100);
text(textoDer,460,100);

// CITA
textAlign(CENTER,TOP);
textSize(12);

text(cita,320,370);

}

//SEXTA PANTALLA
void musicadest(){

  background(fondo);
  tituloFade("Canción destacada",360,425,30);
  imagenFade(rojo,30,320,150,150);

  textAlign(LEFT,TOP);

  String textoIzq =
  "«Undertale» es el tema\n"+
  "principal del videojuego.\n"+
  "Su melodía transmite\n"+
  "nostalgia, esperanza\n"+
  "y aventura. Incorpora\n"+
  "leitmotivs que unen\n"+
  "personajes, lugares y\n"+
  "momentos importantes.";

  String textoDer =
  "Es una de las piezas\n"+
  "más representativas de\n"+
  "su identidad musical.\n"+
  "La música acompaña\n"+
  "la historia y permanece\n"+
  "en la memoria del\n"+
  "jugador.";

  if(alphaImagen>=250 && alphaTexto<255){
  alphaTexto+=5;
}

fill(255,alphaTexto);

textAlign(LEFT,TOP);
textSize(15);

text(textoIzq,30,30);
text(textoDer,330,30);

}

//SEPTIMA PANTALLA
void deltarune(){

  background(0);
  imageMode(CENTER);
  logoFade(logo, width/2, 55, 360, 95);

  imageMode(CORNER);
  imagenFade(delta,60,120,180,140);
  imagenFade(tres,40,280,220,140);

  tint(255,70);

  image(flor,-70,0,160,height);

  pushMatrix();

  translate(width,0);

  scale(-1,1);

  image(flor,-70,0,160,height);

  popMatrix();

  noTint();

  textAlign(LEFT,TOP);

  String texto1 =
  "Deltarune es un videojuego de rol\n"+
  "independiente desarrollado por\n"+
  "Toby Fox y publicado por capítulos\n"+
  "desde 2018. Comparte personajes\n"+
  "con Undertale pero posee un\n"+
  "universo completamente distinto.";

  String texto2 =
  "Su banda sonora mantiene el uso\n"+
  "de leitmotivs y mezcla chiptune,\n"+
  "rock, jazz, electrónica y música\n"+
  "orquestal para reforzar la historia\n"+
  "y las emociones de cada escena.";

 if(alphaTitulo>=250 && alphaTexto<255){
  alphaTexto+=5;

}

fill(255,alphaTexto);

textAlign(LEFT,TOP);
textSize(14);

text(texto1,300,130);
text(texto2,300,270);

}

//OCTAVA PANTALLA.
void dontforget(){
  background(deltarune);
  tituloFade("DON'T FORGET",width/2,30,40);

  textAlign(CENTER,TOP);

  String dont =
  "«Don't Forget» es la canción de los créditos de "+
  "Deltarune, compuesta por Toby Fox e interpretada "+
  "por Laura Shigihara. Su melodía transmite una "+
  "sensación de esperanza, recuerdo y conexión entre "+
  "los personajes. Además, comparte leitmotivs con "+
  "otros temas de la banda sonora, como Beginning, "+
  "Field of Hopes and Dreams y THE WORLD REVOLVING, "+
  "reforzando la unidad musical del juego. Al sonar "+
  "en los créditos, funciona como una despedida "+
  "emocional y resume los principales temas de la "+
  "historia.";

 if(alphaTitulo>=250 && alphaTexto<255){
  alphaTexto+=5;

}

fill(0, alphaTexto);
textAlign(CENTER,TOP);
textSize(17);
text(dont,70,110,500,300);

}

//NOVENA Y ULTIMA
void finalPresentacion(){

  background(nine);
  tituloFade("¡GRACIAS!", width/2, 140, 45);
  
  if(alphaTitulo>=250 && alphaTexto<255){
    alphaTexto+=5;
  }

  fill(255, alphaTexto);
  textAlign(CENTER);
  textSize(22);
  text("Presentación finalizada", width/2, 200);

  // BOTON RESET
  fill(80);
  rect(220,300,200,60,10);

  fill(255);
  textAlign(CENTER,CENTER);
  textSize(28);
  text("RESET",320,330);

}

void tituloFade(String titulo,float x,float y,int tam){

  if(alphaTitulo<255){
    alphaTitulo+=5;
  }

  if(alphaTitulo>180 || pantalla==8){
    fill(255,255,0,alphaTitulo);
  }else{
    fill(255,alphaTitulo);
  }

  textAlign(CENTER,TOP);
  textSize(tam);
  text(titulo,x,y);

}

void imagenFade(PImage img,float x,float y,float w,float h){

  if(alphaTitulo>=250){

    if(alphaImagen<255){
      alphaImagen+=5;
    }

  }

  tint(255,alphaImagen);
  image(img,x,y,w,h);
  noTint();


}
//PA LAS IMAGENES QUE SON TITULOS
void logoFade(PImage img, float x, float y, float w, float h){

  if(alphaTitulo < 255){
    alphaTitulo += 5;
  }

  tint(255, alphaTitulo);
  image(img, x, y, w, h);
  noTint();

}
