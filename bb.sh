
#-colorspace gray -fill white -resize 480% -sharpen 0x1
scrot -q 100 1.jpg
convert 1.jpg -colorspace gray -crop 380x110+490+240 output.jpg
convert -colorspace gray -crop 416x70+490+345 1.jpg ans1output.jpg
convert -colorspace gray -crop 416x70+490+415 1.jpg ans2output.jpg
convert -colorspace gray -crop 416x70+490+480 1.jpg ans3output.jpg

convert -resize 200% output.jpg foo.tif
convert -resize 200% ans1output.jpg foh1.tif
convert -resize 200% ans2output.jpg foh2.tif
convert -resize 200% ans3output.jpg foh3.tif
{
tesseract foo.tif foo
tesseract foh1.tif foh1

tesseract foh2.tif foh2

tesseract foh3.tif foh3
} &> /dev/null
#cat foo.txt
#cat foh1.txt
#cat foh2.txt
#cat foh3.txt
tail -n +1 foo.txt > fom.txt
#tail -n +1 foh.txt > opl.txt
echo -n > opl.txt
echo `cat foh1.txt` >> opl.txt
echo `cat foh2.txt` >> opl.txt
echo `cat foh3.txt` >> opl.txt
cat opl.txt | tr ' ' '\n' > opt.txt
#sed -i '/^$/d' opt.txt
#cat opm.txt | tr '' ' ' > opt.txt
#cat opt.txt
cat foo.txt
cat foh1.txt
cat foh2.txt
cat foh3.txt
cat foo.txt | tr ' ' '+' > fon.txt
  
cat fon.txt | tr '\n' '+' > fop.txt
string=`cat fop.txt`
#echo $string
#echo -n > mf.txt
echo -n > temp.txt
#cat mf.txt
#echo "elinks http://www.google.com/search?q=$string" >> mf.txt
#`cat mf.txt` > temp.txt
elinks -dump "http://www.google.com/search?q=$string"  > temp.txt
#cat mf.txt
#cat temp.txt
#echo $c
#echo $c > temp.txt  
#$string > temp.txt
#filename="opt.txt"
sed -i '/^$/d' opt.txt
while read FILE
   do  
     echo -en "$FILE->"
     grep -i "$FILE" temp.txt | wc -l  
done <opt.txt

cat foo.txt | tr '\n' ' ' > fow.txt
que=`cat fow.txt`
opt1=`cat foh1.txt`
opt2=`cat foh2.txt`
opt3=`cat foh3.txt`
opt4=`cat foh4.txt`
str=`cat qno.txt`
str=$(($str+1))
echo "$str" > qno.txt
echo -e  "{\n\t\"ans\": \"\",\n\t\"opt1\": \"$opt1\",\n\t\"opt2\": \"$opt2\",\n\t\"opt3\": \"$opt3\",\n\t\"que\": \"$que\",\n\t\"uid\": \"$str\"\n}," >> zest.txt
