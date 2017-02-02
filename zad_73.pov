 /* ---------------------------------------------------------*/  
 /*      Prosty program rysujący obraz oświetlonej kuli      */
 /* ---------------------------------------------------------*/
 
 #include "colors.inc"      /* włączenie pliku zawierającego */
                            /* predefiniowane elementy sceny */
 

 background { color Cyan }  /* określenie koloru tła */
  
  
 camera                     /* określenie pozycji obserwatora */ 
                            /* i sposobu patrzenia na obiekt */
 {
    location <0, 8, -3>
    look_at  <0, 1,  2>
 } 
  

 #declare Count = 1;   
 #declare Number = 64;  
 #declare Ang = 360/Number;  
 
 /* Deklaracja i ustawienie wartości liczby przebiegów pętli*/
 #while (Count < Number+1) /* Sprawdzenie warunku końca pętli*/
 
    sphere /* definicja obiektu */
    {
        <-2, 1, 0>  0.5
        texture{pigment { color Green }} 
        scale <1,2.5,1>
        rotate <0,Ang*Count,0>
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