
Set shell = CreateObject("WScript.Shell")
Set sapi = CreateObject("sapi.spvoice")

puan = 0


sapi.Speak "Welcome to the hacker simulator."
MsgBox "Hacker Simülatörüne Hoş Geldin! Amacın 100 puan toplayıp sistemi ele geçirmek.", 0+64, "Yükleniyor..."


kullanici = InputBox("Hacker kod adını belirle:", "Sistem Girişi")
If kullanici = "" Then kullanici = "Anonim"

MsgBox "Pekala " & kullanici & ", ilk görevin başlıyor!", 0+64, "Görev 1"


cevap1 = MsgBox("Sisteme girmek için 'Port 80' kapısını kırman gerekiyor. Baltayla mı vuracaksın yoksa kod mu yazacaksın?" & vbCrLf & "(Evet = Kod Yaz / Hayır = Balta Kullan)", 4+32, "Kritik Seçim")

If cevap1 = 6 Then 
    puan = puan + 50
    MsgBox "Zekice! Port 80 başarıyla geçildi. +50 Puan!", 0+64, "Başarılı"
Else 
    puan = puan - 20
    MsgBox "Baltayla modemi kırdın... İnternetin kesildi. -20 Puan.", 0+16, "Hata"
End If


sapi.Speak "Wait, someone is coming!"
cevap2 = InputBox("Güvenlik kamerası seni gördü! Saklanmak için bir renk gir (Mavi/Kırmızı):", "ACİL DURUM")

If LCase(cevap2) = "mavi" Then
    puan = puan + 50
    MsgBox "Mavi ışıkların arasına gizlendin, seni fark etmediler!", 0+64, "Güvenli"
Else
    puan = puan + 10
    MsgBox "Kırmızı çok dikkat çekti ama hızlıca kaçtın.", 0+48, "Dikkat"
End If


MsgBox "Hesaplanıyor... Toplam Puanın: " & puan, 0+64, "Sonuç"

If puan >= 100 Then
    sapi.Speak "Access granted. You are a master hacker."
    MsgBox "Tebrikler " & kullanici & "! Artık bir mastersın. Şimdi ödülünü al!", 0+64, "ZAFER"
    ' Ödül olarak bir video açalım
    shell.Run "https://youtu.be/z4pOvrzg6bc"
Else
    sapi.Speak "Access denied. Initiating self destruct."
    MsgBox "Puanın yetmedi! Bilgisayar 5 saniye içinde ĞĞĞĞĞĞlanacak!", 0+48, "EYVAH"
    wscript.sleep 2000
    MsgBox "ŞAKA YAPTIM! Puanın: " & puan & ". Ama yine de ĞĞĞĞlandın!", 0+64, "Oyun Bitti"
End If
