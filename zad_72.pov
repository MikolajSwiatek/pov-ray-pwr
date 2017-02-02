 /* ---------------------------------------------------------*/  
 /*      Prosty program rysujący obraz oświetlonej kuli      */
 /* ---------------------------------------------------------*/
 
 #include "colors.inc"      /* włączenie pliku zawierającego */
                            /* predefiniowane elementy sceny */
 

 background { color Cyan }  /* określenie koloru tła */
  
  
 camera                     /* określenie pozycji obserwatora */ 
                            /* i sposobu patrzenia na obiekt */
 {
 location <1, 8, -9>
 look_at <-4, 0,7>
 } 
  
  
 cone /* definicja obiektu */
 {
    <0, 0, 0>  1.5
    <0, 3, 0>, 0
    texture{pigment { color Green }}
 }    
 
 #declare Count = 1;   
 #declare Number = 64;    
 
 /* Deklaracja i ustawienie wartości liczby przebiegów pętli*/
 #while (Count < Number+1) /* Sprawdzenie warunku końca pętli*/
 
    cone /* definicja obiektu */
    {
        <0, 0, 0>  1.5
        <0, 3, 0>, 0
        texture{pigment { color Red }} 
        translate <0, 0, 4*Count>
    } 
 
 #declare Count= Count+1; /* Zwiększenie licznika petli*/
 #end /* Koniec pętli*/
 
 
 plane /* nazwa obiektu */
 {
    <0, 1, 0>, -1 /* parametry opisujące płaszczyznę */
    pigment {checker color Red,color Blue }
    /*(czerwono - niebieska szachownica) */
 }

 
 light_source { <2, 2, -3> color Red }   /* definicja oświetlenia sceny */ 
 light_source { <1, 2, -1> color Green }   /* definicja oświetlenia sceny */ 