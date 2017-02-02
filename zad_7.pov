 /* ---------------------------------------------------------*/  
 /*      Prosty program rysujący obraz oświetlonej kuli      */
 /* ---------------------------------------------------------*/
 
 #include "colors.inc"      /* włączenie pliku zawierającego */
                            /* predefiniowane elementy sceny */
 

 background { color Cyan }  /* określenie koloru tła */
  
  
 camera                     /* określenie pozycji obserwatora */ 
                            /* i sposobu patrzenia na obiekt */
 {
    location <0, 2, -3>
    look_at  <0, 1,  2>
 } 
  
  
 sphere                     /* definicja obiektu */ 
  
 {
    <0, 1, 2>, 2
    texture { pigment { color White }}
 }     
 
 plane /* nazwa obiektu */
 {
    <0, 1, 0>, -1 /* parametry opisujące płaszczyznę */
    pigment {checker color Red,color Blue }
    /*(czerwono - niebieska szachownica) */
 }

 
 light_source { <2, 2, -3> color Red }   /* definicja oświetlenia sceny */ 
 light_source { <1, 2, -1> color Green }   /* definicja oświetlenia sceny */ 