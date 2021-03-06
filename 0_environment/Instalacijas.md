# Nepieciešamās instalācijas uz personīgajiem vai nodrošinātajiem datoriem

**SVARĪGI**  

Instalāciju 3\. 4\. un 5\. punktus secīgi jo Jupyter notebook instalācija ir piesaistīta Python instalācijām un VSCode būs nepieciešams atrast eksistējošu Python instalāciju.

Ja jūs lietosiet windows, no sākuma pārliecinieties par to, kurš operētājsistēmas tips jums ir. x32 (dažreiz ir apzīmēts kā x86) jeb 32 bitu vai arī x64 jeb 64 bitu.  

Par to var pārliecināties, sekojot šai pamācībai:  
https://www.howtogeek.com/howto/21726/how-do-i-know-if-im-running-32-bit-or-64-bit-windows-answers/  

## Instalācijas, kuras šeit ir aprakstītas ir visas, kuras būs nepieciešamas uz jūsu personīgajiem datoriem šī kursa gaitā.

1. Linux vide (Bash valoda),  
2. SSH funkcionalitāte,  
3. Python
4. Jupyter Notebook (Python koda editors),  
5. VSCode (Python + SQL koda editors)  
6. git



## 1. Linux vides instalācija (neobligāti)  
Linux vide būtu ļoti ieteicama, lai testētu bash skriptus priekš instalācijām un programmistiskām darbībām ar datu failiem, ko nav iespējams veikt ar Windows.

**Windows 10**  
Ja Jūsu operētājsistēma ir 64 bitu, tad sekojiet šai pamācībai https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/  
un izvēlieties **Ubuntu**  

Pēc veiksmīgas instalācijas, Ubuntu aplikāciju būtu jāvar atrast un palaist caur Start. 



**Linux / macOS:**  
Ja plānojat strādāt uz Linux vai macOS operētājsistēmas, tad šo punktu varat izlaist un uz jūsu datoriem jau ir viss nepieciešamais


## 2. SSH funkcionalitāte (obligāti)  
Mums būs nepieciešams lietot ssh, lai attālināti pieslēgtos AWS virtuālajām mašīnām uz kurām izpildīsim lielu daļu koda. 

<!-- Ja ir ubuntu subsistēma, tad var lietot ssh un iespējams arī git -->
<!-- Ar ubuntu apakšistēmu lietot python/vscode/jupyter droši vien ir slikta ideja-->

**Jebkura Windows versija**  
Ja lietojat Windows, būs nepieciešams instalēt PuTTY, atbilstošu operētājsistēmas versijai. 
Jums ir jāielādē pareizā versija (x32 vai x64) no  
https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html  

**Linux / macOS / Linux Subsystem for Windows**  
Ja plānojat strādāt ar macOS vai Linux, pakotne ssh, ko mēs lietosim, būs pieejama pēc noklusējuma.  
<!-- 
Iespējams var nākties atvērt portu/iespējot kādus konfigus no šīs pamācības.
https://www.illuminiastudios.com/dev-diaries/ssh-on-windows-subsystem-for-linux/ -->



## 3. Python (Obligāti)
Mēs lietosim partikulāru Python versiju (visi vienādu) ar identiskām instalētajām bibliotēkām.

**Linux / macOS**  
Ja lietosiet Linux vai macOS, tad instalācijai komandrindā ir jāizpilda šīs divas rindiņas un jāseko instalācijas norādījumiem ekrānā.

`curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh`  

`bash Anaconda3-2019.10-Linux-x86_64.sh`
Pēc instalācijas, aizveriet un no jauna atveriet termināli.

**Windows**  

Ja jums ir x32 Windows, tad Python versiju, ko lietosim ieladējiet, sekojot šim linkam:
https://repo.anaconda.com/archive/Anaconda3-2019.10-Windows-x86.exe  

Ja jums ir x64 Windows, tad Python versiju, ko lietosim ieladējiet, sekojot šim linkam:
https://repo.anaconda.com/archive/Anaconda3-2019.10-Windows-x86_64.exe  

Tālāk sekojiet instrukcijām sekojošajā linkā.  
Svarīgas piezīmes:  
* Instalējot, jums tiks dota izvēle instalēt Python tikai Jūsu lietotāja kontam vai visiem lietotāja kontiem uz jūsu datora. Rekomendēju instalēt visiem kontiem.
* Instalācijas 8\. punktā ielieciet ķeksi pie "Add Anaconda3 to my PATH environment variable" UN pie "Register Anaconda3 as my default Python"  
* Mēs neizmantosim PyCharm koda editoru, tāpēc tā instalāciju izlaidiet.  

https://docs.anaconda.com/anaconda/install/windows/  

Neatkarīgi no operētājsistēmas, ir nepieciešams atcerēties kur jūs instalējat Anaconda jo pēc tam uz šo atrašānās vietu vajadzēs atsaukties.


## 4. Jupyter Notebook (obligāti)  
Jupyter Notebook būs mūsu primārais Python koda apstrādes rīks. 
<!-- https://jupyter.org/install -->

**Linux / macOS**  
Pēc Anaconda instalācijas izpildiet sekojošo komandu.  
`conda install -c conda-forge jupyterlab`  
Ir iespējams, ka nepieciešamās pakotnes jau būs instalētas. Tādā gadījumā Anaconda prompt par to arī ziņos. Jebkurā gadījumā, pēc instalācijas aizveriet un no jauna atveriet termināli.


**Windows**  
Instalēt jupyter notebook caur Ubuntu apakšsistēmu nedrīkst jo Windows to vienkārši neatradīs. Tā vietā, caur start menu jāatrod opcija Anaconda prompt un jāizpilda sekojošā komanda:
`conda install -c conda-forge jupyterlab`  
Ir iespējams, ka nepieciešamās pakotnes jau būs instalētas. Tādā gadījumā Anaconda prompt par to arī ziņos.


## 5. VSCode (obligāti)  
Mēs lietosim VSCode, lai rediģētu Python, bash un SQL kodu, kā arī lai ērti sekotu kursa repozitorijam caur git.
Ielādējiet to no sekojošā linka:  
https://code.visualstudio.com/download.  
Nākamais solis ir instalēt Python paplašinājumu uz VSCode, kas atļaus automātiski atrast kļūdas un labot koda sintaksi.

## 6. git (obligāti)  
git ir viena no pasaulē populārākajām koda versiju kontroles sistēmām. Izmantosim to, lai atjauninātu kursa materiālus. 