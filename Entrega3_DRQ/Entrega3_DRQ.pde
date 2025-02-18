float angle;

float xPos;
float yPos;

float xSpeed = 0.125;
float ySpeed = 0.25;

int xDirection = 1;
int yDirection = 1;



void setup() {
size(800, 800);

ellipseMode(CENTER);
stroke(0,15, 30);
strokeWeight(25);
frameRate(15);

xPos = width / 2;
yPos = height / 2;
}

void draw(){
  //Esta parte del codigo del void draw es en parte mi interpretación de arte de rotación y escala usando circulos
background(0);
translate(width/2, height/2);
for (int i = 0; i < 100; i++) {
fill(i*10, 255-i*25, 255-i*10);
scale(0.95);
rotate(radians(angle));

//Sin embargo también intento combinar con este el ejercicio de la clase pasada para ver si el circulo central se podia mover

xPos = xPos + (xSpeed * xDirection);
yPos = yPos + (ySpeed * yDirection);

if(xPos > width || xPos == 0) {
xDirection = xDirection * -1;
}

if(yPos > height || yPos < 0) {
yDirection = yDirection * -1;
}

//Creo que nos es posible de mover del todo pero si se puede afectar el patron de rotación pausandolo u trabandolo 
//Esto se hace a través de modificar el angulo de rotación al iguyal que la velocidad a la que se genera el movimiento, que es absurdamente rápida y aun toca corregir
ellipse(xPos, yPos, 100, 100);

}
angle+=0.5;



}
