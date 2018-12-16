# img_proc
졸업프로젝트의 카메라 파트에서 어두운 이미지로 인한 인식률 저하를 개선하기 위한 알고리즘을 만들어 보았습니다. 

Result
=====
![Alt text](/img_fix.JPG)

Method
======
95%데이터를 포함하는  구간(평균±2𝜎)을 구한다음, 0~255로 다시 분포 시킴.


  - 𝑈=min⁡(255,𝑚+2𝜎) : 구간의 upper bound
  - L=max(0,𝑚−2𝜎) : 구간의 lower bound
  - 𝐼𝑚𝑔_𝑛𝑒𝑤=(𝐼𝑚𝑔_𝑜𝑟𝑖−𝐿)/(𝑈−𝐿)×255 : 95%구간으로 재조정된 이미지


표준편차가 큰 경우 L=0,U=255가 되므로, 𝐼𝑚𝑔_𝑛𝑒𝑤=𝐼𝑚𝑔_𝑜𝑟𝑖 를 만족하게됨

어두운 부분이 관심대상이기 때문에 표준편차, 평균 계산시 pixel=0 or pixel>=127은 무시함