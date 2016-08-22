echo -n "a , b ve c değerlerini aralarında birer boşluk bırakacak şekilde giriniz:"
# -n Parametresi ile bir satır aşağı geçilmesinin önüne geçiyoruz.
read A B C; #A ,B ve C değerlerimizi değişken olarak alıyooruz.
DELTA=$[$B*$B-(4*$A*$C)]; #Diskriminantı hesaplıyoruz.
if (($DELTA > 0)) # Delta 0 dan büyükse denklemin iki ayrı kök vardır
then #İki ayrı kökü hesaplıyoruz.
	KOKDELTA=$[(1/($DELTA**2))]
	KOK1=$[(-$B-$KOKDELTA)/(2*$A)]
	KOK2=$[(-$B+$KOKDELTA)/(2*$A)]
	echo "Kökler:" $KOK1 " ve " $KOK2 #Köklerimizi yazdırıyoruz.
elif (($DELTA == 0)) # Delta 0 ise çakışık iki kökü vardır.
then #Çakışık kökleri hesaplıyoruz.
	KOK=$[(-$B)/(2*$A)]
	echo "Denklemin kökleri çakışıktır. Kök:" $KOK #Kökü yazdırıyoruz
else #Delta 0 dan küçükse denklemimizin reel kökü yoktur.
	echo "Denklemin Gerçek Kökü Yoktur!" #Bilgiyi ekrana yazıyoruz.
fi
