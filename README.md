# 🌤️ **Hava Durumu Uygulaması**

Bu **Ruby** uygulaması, belirli bir konumun anlık hava durumu bilgilerini getirir. Kullanıcıdan şehir bilgisi alarak güncel sıcaklık, hava durumu durumu ve diğer meteorolojik verileri görüntüler. **API** entegrasyonu sayesinde veriler gerçek zamanlı olarak çekilmektedir.

---

## ✨ **Özellikler**

✔️ **Şehir bazlı hava durumu sorgulama**  
✔️ **Güncel sıcaklık ve hava durumu bilgileri**  
✔️ **Kullanıcı dostu terminal arayüzü**  
✔️ **API üzerinden gerçek zamanlı veri çekme**  

---

## 🔧 **Kurulum**

### 🛠 **1. Depoyu klonlayın:**
```sh
 git clone https://github.com/jovialpiglet/havadurumu.git
 cd havadurumu
```

### 📦 **2. Gerekli bağımlılıkları yükleyin:**
```sh
 bundle install  # Eğer Bundler kullanıyorsanız
 sudo apt install ruby-bundler  # Debian/Ubuntu tabanlı sistemler için
 sudo pacman -S ruby-bundler  # Arch tabanlı sistemler için
```

### 🔑 **3. API anahtarınızı ekleyin:**
Bir hava durumu API’sinden (**örneğin OpenWeatherMap**) bir **API anahtarı** alarak `havadurumu.rb` içine ekleyin:
```ruby
 API_KEY = "YOUR_API_KEY"
```

---

## 🚀 **Kullanım**

Uygulamayı başlatmak için aşağıdaki komutu çalıştırın:
```sh
 ruby havadurumu.rb
```
Şehir ismini girerek hava durumu bilgilerini edinebilirsiniz.

---

## 📌 **Gereksinimler**

✅ **Ruby 3.x veya üzeri**  
✅ **Bir hava durumu API anahtarı (örn. OpenWeatherMap)**  

---

## 📜 **Lisans**

📄 Bu proje **MIT lisansı** ile lisanslanmıştır.

---

📌 **Not:** Geri bildirimleriniz bizim için çok değerli! 📝 Hata bildirmek veya önerilerde bulunmak için **issue** açabilirsiniz. 🚀

