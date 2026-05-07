' ANSI KODLAMA ÝLE KAYDET
Set shell = CreateObject("WScript.Shell")
Set sapi = CreateObject("sapi.spvoice")

puan = 0

' GÝRÝÞ SEKANSI
sapi.Speak "Welcome to the hacker simulator."
MsgBox "Hacker Simülatörüne Hoþ Geldin! Amacýn 100 puan toplayýp sistemi ele geçirmek.", 0+64, "Yükleniyor..."

' BÖLÜM 1: ÝSÝM GÝRÝÞÝ
kullanici = InputBox("Hacker kod adýný belirle:", "Sistem Giriþi")
If kullanici = "" Then kullanici = "Anonim"

MsgBox "Pekala " & kullanici & ", ilk görevin baþlýyor!", 0+64, "Görev 1"

' BÖLÜM 2: BÝLGÝ YARIÞMASI
cevap1 = MsgBox("Sisteme girmek için 'Port 80' kapýsýný kýrman gerekiyor. Baltayla mý vuracaksýn yoksa kod mu yazacaksýn?" & vbCrLf & "(Evet = Kod Yaz / Hayýr = Balta Kullan)", 4+32, "Kritik Seçim")

If cevap1 = 6 Then ' Evet (Kod Yaz)
    puan = puan + 50
    MsgBox "Zekice! Port 80 baþarýyla geçildi. +50 Puan!", 0+64, "Baþarýlý"
Else ' Hayýr (Balta)
    puan = puan - 20
    MsgBox "Baltayla modemi kýrdýn... Ýnternetin kesildi. -20 Puan.", 0+16, "Hata"
End If

' BÖLÜM 3: HIZ TESTÝ
sapi.Speak "Wait, someone is coming!"
cevap2 = InputBox("Güvenlik kamerasý seni gördü! Saklanmak için bir renk gir (Mavi/Kýrmýzý):", "ACÝL DURUM")

If LCase(cevap2) = "mavi" Then
    puan = puan + 50
    MsgBox "Mavi ýþýklarýn arasýna gizlendin, seni fark etmediler!", 0+64, "Güvenli"
Else
    puan = puan + 10
    MsgBox "Kýrmýzý çok dikkat çekti ama hýzlýca kaçtýn.", 0+48, "Dikkat"
End If

' BÖLÜM 4: FÝNAL VE ÞAKA
MsgBox "Hesaplanýyor... Toplam Puanýn: " & puan, 0+64, "Sonuç"

If puan >= 100 Then
    sapi.Speak "Access granted. You are a master hacker."
    MsgBox "Tebrikler " & kullanici & "! Artýk bir mastersýn. Þimdi ödülünü al!", 0+64, "ZAFER"
    ' Ödül olarak bir video açalým
    shell.Run "https://youtu.be/z4pOvrzg6bc"
Else
    sapi.Speak "Access denied. Initiating self destruct."
    MsgBox "Puanýn yetmedi! Bilgisayar 5 saniye içinde ÐÐÐÐÐÐlanacak!", 0+48, "EYVAH"
    wscript.sleep 2000
    MsgBox "ÞAKA YAPTIM! Puanýn: " & puan & ". Ama yine de ÐÐÐÐlandýn!", 0+64, "Oyun Bitti"
End If
