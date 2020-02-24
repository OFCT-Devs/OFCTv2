"C:\Program Files\Bandizip\bz.exe" c ../OFCTv2.zip ./*
for /D %%D in ("./*.*") do (
    if /I not "%%~nxD"==".git" (
        "C:\Program Files\Bandizip\bz.exe" a ../OFCTv2.zip "%%D"
    )
)

"C:\Program Files\Bandizip\bz.exe" d ../OFCTv2.zip *.psd
"C:\Program Files\Bandizip\bz.exe" d ../OFCTv2.zip *.aep

ren ..\OFCTv2.zip OFCTv2.osk