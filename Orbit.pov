  #include "colors.inc"
  
      
  camera 
  {   
    
      
    location <0, 60, -80>
    look_at  <0, 0,  -20> 
    
  }   
  
 
  plane                                                                    
  {
    <0, 1, 0>, -5                                                        
   pigment {checker color Gold, color Copper }        
  }   
  
    
  
  #declare Number = 25;                        // The number equals the number of animation frames                         
  
  #declare Ang = 720/Number;                   // The rotation angle per frame 
  
      
  sphere 
  {
    <0, 0, 2>, 5
    texture { pigment { color Silver }  } 
                       
    #if (clock < 13)             
        translate <0, 2, 20>                       // Lift and move sphere   
               
        rotate <0, clock*Ang, 0>                   // Rotation around y axis by an angle resulting from the product 
    #end
    #if (clock >= 13)                               // values of clock animation, and the angle of rotation                                          
        
        translate <0, 2, -20> 
                                                    // per one frame      
        rotate <0, -clock*Ang, 0> 
        
        translate <0, 2, 40> 
    #end
    
  }
    
             
  
 light_source { <0, 50, -30> color White} 
 light_source { <0, 50, -30> color White} 