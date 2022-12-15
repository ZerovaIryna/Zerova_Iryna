
if not exist "PNG" mkdir PNG
if not exist "BMP" mkdir BMP

xcopy ./GENERAL/*.png ./PNG/ /s
xcopy ./GENERAL/*.bmp ./BMP/ /s

dir ./PNG/ /od
dir ./BMP/ /on