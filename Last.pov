                    /* ---------------------------------------------------------*/  
 /*      Prosty program rysujący obraz oświetlonej kuli      */
 /* ---------------------------------------------------------*/
 
 #include "colors.inc"      /* włączenie pliku zawierającego */
                            /* predefiniowane elementy sceny */
 

 background { color Cyan }  /* określenie koloru tła */
  
  
 camera                     /* określenie pozycji obserwatora */ 
                            /* i sposobu patrzenia na obiekt */
 {
    location    <0, 15, -20>
    look_at     <5, 10,  30>
 } 
  

 #declare Count = 1;
 
 #declare myobject = union
 {   
     #declare Number = 64;  
     #declare Ang = 360/Number;  
     
     /* Deklaracja i ustawienie wartości liczby przebiegów pętli*/
     #while (Count < Number+1) /* Sprawdzenie warunku końca pętli*/
     
        sphere /* definicja obiektu */
        {
            <-2, 1, 0> 0.5
            texture { pigment { color Green }} 
            scale <1, 2.5, 1>
            rotate <0, Ang * Count, 0>
        }  
     
        #declare Count = Count + 1; /* Zwiększenie licznika petli*/
     #end /* Koniec pętli*/  
 }   
 
 #declare numberRows = 5;
 #declare X = 119;
 #declare CountX = 0;
 #while (CountX < X+1) 
    #declare mod3 = mod(CountX,numberRows);
        
    object 
    {
        myobject translate <mod3 * 3, 1, floor(CountX/numberRows) * 3>   
      }        
        
    #declare CountX = CountX+1; 
 #end 
 
 plane /* nazwa obiektu */
 {
    <0, 1, 0>, -1 /* parametry opisujące płaszczyznę */
    pigment {checker color Red,color Blue }
    /*(czerwono - niebieska szachownica) */
 }

 
 light_source { <-23, 10, -3> color Red }   /* definicja oświetlenia sceny */ 
 light_source { <0, 10, -30> color Green }   /* definicja oświetlenia sceny */ 