#!/bin/sh
#IN_TIF=$1
OUT_PNG=$1

#nice -n 10 gdal_translate -of PNG -outsize 50% 50% $IN_TIF $OUT_PNG
mkdir "Prev" ; 
echo "--Stage1 Sea Color--" 
nice -n 8 convert -fill '#0000ff' -opaque '#000000' $OUT_PNG "Prev/Prev_1.png"
cd "Prev"
echo "----Stage2 Start----" ;
echo "--Stage2 Base Level1--" 
nice -n 8 convert -fuzz 5% -fill '#05ff05' -opaque '#050505' "Prev_1.png" "Prev_2.png"
echo "--Stage2 Base Level2--" 
nice -n 8 convert -fuzz 10% -fill '#05e605' -opaque '#0d0d0d' "Prev_2.png" "Prev_3.png"
echo "--Stage2 Base Level3--" 
nice -n 8 convert -fuzz 10% -fill '#04cc04' -opaque '#272727' "Prev_3.png" "Prev_4.png"
echo "--Stage2 Base Level4--" 
nice -n 8 convert -fuzz 15% -fill '#04b204' -opaque '#414141' "Prev_4.png" "Prev_5.png"
echo "--Stage2 Base Level5--" 
nice -n 8 convert -fuzz 15% -fill '#039903' -opaque '#686868' "Prev_5.png" "Prev_6.png"
echo "--Stage2 Base Level6--" 
nice -n 8 convert -fuzz 15% -fill '#038003' -opaque '#757575' "Prev_6.png" "Prev_7.png"
echo "--Stage2 Base Level7--" 
nice -n 8 convert -fuzz 10% -fill '#026622' -opaque '#9c9c9c' "Prev_7.png" "Prev_8.png"
echo "--Stage2 Base Level8--" 
nice -n 8 convert -fuzz 10% -fill '#6e8003' -opaque '#b6b6b6' "Prev_8.png" "Prev_9.png"
echo "--Stage2 Base Level9--" 
nice -n 8 convert -fuzz 10% -fill '#839904' -opaque '#c3c3c3' "Prev_9.png" "Prev_10.png"
echo "--Stage2 Base Level10--" 
nice -n 8 convert -fuzz 5% -fill '#99b205' -opaque '#dddddd' "Prev_10.png" "Prev_11.png"
echo "--Stage2 Base Level11--" 
nice -n 8 convert -fuzz 5% -fill '#afcc06' -opaque '#eaeaea' "Prev_11.png" "Prev_12.png"
echo "--Stage2 Base Level12--" 
nice -n 8 convert -fuzz 5% -fill '#c53607' -opaque '#f7f7f7' "Prev_12.png" "Prev_13.png"
echo "----Stage2 End----" ;
