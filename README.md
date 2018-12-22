# img_proc 
I made camera brightness adjusting algorithm to get better detection in my capston project.
This algorithm calulates mean, standard devation to get gaussian modeled 95% pixel range.

Result
=====
![Alt text](/img_fix.JPG)

Method
======
Calculating 95% data range(m±2𝜎), relocate by (img-L)/(U-L)*255


  - 𝑈=min⁡(255,𝑚+2𝜎) : 95% range upper bound
  - L=max(0,𝑚−2𝜎) : 95% range lower bound
  - 𝐼𝑚𝑔_𝑛𝑒𝑤=(𝐼𝑚𝑔_𝑜𝑟𝑖−𝐿)/(𝑈−𝐿)×255 : re-arranged img

If standard deveation is large enough,i.e. L=0,U=255,will satisfying 𝐼𝑚𝑔_𝑛𝑒𝑤=𝐼𝑚𝑔_𝑜𝑟𝑖.

In my case, interested area is dark (most objects are in darkpixel). So I ignored bright pixel (pixel>127) and also pixel=0 (black frame which is just occured by camera rectification). 
