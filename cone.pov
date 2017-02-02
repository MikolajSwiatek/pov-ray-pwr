 /* ---------------------------------------------------------*/  
 /*      Prosty program rysujÄ…cy obraz oĹ›wietlonej kuli      */
 /* ---------------------------------------------------------*/
 
 #include "colors.inc"      /* wĹ‚Ä…czenie pliku zawierajÄ…cego */
                            /* predefiniowane elementy sceny */
 

 background { color Cyan }  /* okreĹ›lenie koloru tĹ‚a */
  
  
 camera                     /* okreĹ›lenie pozycji obserwatora */ 
                            /* i sposobu patrzenia na obiekt */
 {
 location <4, 2, -3>
 look_at <0, 1, 4>
 } 
  
  
 cone /* definicja obiektu */
 {
    <0, 0, 0>  1.5
    <0, 3, 0>, 0
    texture{pigment { color Green }}
 }    
 
  
 plane /* nazwa obiektu */
 {
    <0, 1, 0>, -1 /* parametry opisujÄ…ce pĹ‚aszczyznÄ™ */
    pigment {checker color Red,color Blue }
    /*(czerwono - niebieska szachownica) */
 }

 
 light_source { <2, 2, -3> color Red }   /* definicja oĹ›wietlenia sceny */ 
 light_source { <1, 2, -1> color Green }   /* definicja oĹ›wietlenia sceny */ 