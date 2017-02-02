 /* ---------------------------------------------------------*/  
 /*      Prosty program rysujący obraz oświetlonej kuli      */
 /* ---------------------------------------------------------*/
 
 #include "colors.inc"      /* włączenie pliku zawierającego */
                            /* predefiniowane elementy sceny */
 

 //background { color Cyan }  /* określenie koloru tła */
  
  
 camera                     /* określenie pozycji obserwatora */ 
                            /* i sposobu patrzenia na obiekt */
 {
    location <0, 2, -3>
    look_at  <0, 1,  2>
 } 
  
  
 sphere                     /* definicja obiektu */ 
  
 {
    <0, 1, 2>, 2
    texture { pigment { color Copper }}
 } 
  
 
 light_source { <2, 4, -3> color White}   /* definicja oświetlenia sceny */ 
