/**
* Projecte Tipus Compostos de Dades
* ------------------------------------------------------------------------------------------------------------------
* Projecte escrit en Processing IDE en el que tractarem els tipus compostos de dades en Java.
* A aquest projecte se li aniran afegint funcionalitats conforme avancem en els continguts del Tema 5
* @author  Vicent Sanchis
* @since   15/12/23
* @version 1.0
*/
// ---------------------------------------------------------------------------------------------------------------
// Constants
// ---------------------------------------------------------------------------------------------------------------
final static int TAM = 10;  // Grandària de l'array d'enters que hem d'emplenar
// ---------------------------------------------------------------------------------------------------------------
// Variables globals
// ---------------------------------------------------------------------------------------------------------------
int  [] arrayEnters;        // Declaració de l'array d'enters. 
char [] arrayCaracters;     // Declaració de l'array de caracters.
// ---------------------------------------------------------------------------------------------------------------
/**
* Mètode setup: Mètode de cnfiguració i inicialització de la nostra aplicació. 
* Aquest mètode només s'executa una vegada a l'inici de l'aplicaciò.
* @return void
*/
void setup () {
  size (640, 480);
  arrayEnters    = new int  [TAM]; // Reservem l'espai necessari en memòria per emmagatzemar 10 enters.
  arrayCaracters = new char [TAM]; // Reservem l'espai necessari en memòria per emmagatzemar 10 caracters.
  
  for (int i=0; i < TAM; i ++) {
    arrayEnters    [i] = generaNumAleatori  ();   // Inicialitzem el vector d'enters
    arrayCaracters [i] = generaCharAleatori ();   // Inicialitzem el vector de caracters
  }
}
/**
* Metode draw: aquest mètode funciona com una espècies de bucle del joc. 
* S'executa a 60Hz, és a dir, 60 vegades o frames per segon.
* És en aquest mètode on s'aprofita per fer animacions
*/
void draw() {
   //<>//
}
/**
* Mètode mostraEnters
* Mostra l'array unidimensional que es passa per paràmetre de forma
* amigable, és a dir, agradable a la vista.
* @param array unidimensional que es vol mostrar
* @param x coordenada x on vol que es dibuixe l'array
* @param y coordenada y on vol que es dibuixe l'array
* @return void
*/
void mostraEnters (int [] array, int x, int y) {
  textAlign(CENTER);
  text ("ARRAY D'ENTERS", x+90, y-20);
  //for (int i=0; i < array.length; i ++) {
  int a = 0;
  for (int i: array) {
    int posX = x + a*20;
    text (array[a], posX, y+4);
    noFill();
    rectMode(CENTER);
    rect(posX, y, 20, 20);
    a ++;
  }
}
/**
* Mètode mostraCaracters
* Mostra l'array unidimensional que es passa per paràmetre de forma
* amigable, és a dir, agradable a la vista.
* @param array unidimensional que es vol mostrar
* @param x coordenada x on vol que es dibuixe l'array
* @param y coordenada y on vol que es dibuixe l'array
* @return void
*/
void mostraCaracters (char [] array, int x, int y) {
  textAlign(CENTER);
  text ("ARRAY DE CARACTERS", x+85, y-20);
  int a = 0;
  for (char c : array) {
    int posX = x + a*20;
    text(array[a], posX, y+4);
    noFill();
    rectMode(CENTER);
    rect(posX, y, 20, 20);
    a ++;
  }
}
/**
* Mètode generaNumAleatori
* Aquest mètode torna un número enter entre el zero i el 100
* @return un enter entre 1 i 100
*/
int generaNumAleatori () {
  return (int) random (100);
}
/**
* Mètode generaNumAleatori
* Aquest mètode torna un caracter de l'alfabet.
* Cal tenir en compte que els caracters en java al final es codifiquen com a enters basant-se en ASCII. 
* És a dir, la 'a' en realitat és el 97 i la 'z' el 122
* @return un caracter en minúscules
*/
char generaCharAleatori () {
  return (char) random (97, 122);  // En aquesta instrucció estic demanant que la funció random em done un caracter entre la 'a' i la 'z'
}