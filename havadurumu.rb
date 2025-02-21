require 'httparty'
require 'json'
require 'uri'

API_KEY = "#KENDI APINIZI YAZIN"
BASE_URL = "https://api.openweathermap.org/data/2.5/weather"

def hava_durumu_getir(sehir)
  sehir_kodlu = URI.encode_www_form_component(sehir)

  url = "#{BASE_URL}?q=#{sehir_kodlu}&appid=#{API_KEY}&units=metric&lang=tr"
  response = HTTParty.get(url)

  if response.code == 200
    veri = JSON.parse(response.body)
    sonuc = <<~RESULT
      ########################################
      #           Hava Durumu Bilgileri     #
      ########################################
      Şehir: #{veri['name']}
      Sıcaklık: #{veri['main']['temp']}°C   🌡️
      Hissedilen: #{veri['main']['feels_like']}°C
      Hava Durumu: #{veri['weather'][0]['description']}
      ########################################
    RESULT
    return sonuc
  else
    return <<~ERROR
      ########################################
      #     HATA! Hava durumu alınamadı    #
      ########################################
      Şehir adını kontrol et veya API anahtarını doğrula.
      ########################################
    ERROR
  end
end

puts "########################################"
puts "#       Hava Durumu Uygulamasına Hoş Geldiniz!        #"
puts "########################################"

print "Hava durumunu öğrenmek istediğiniz şehri girin: "
sehir = gets.chomp

puts "\n" + "="*40
puts hava_durumu_getir(sehir)
puts "="*40
