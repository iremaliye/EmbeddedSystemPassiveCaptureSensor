# Embedded_system_Projects_Passive_Capture_Sensor

projemiz de elimizde bulunan fpga kartını hareket sensörü ile bağlayarak pir sensörünün hareketi algılaması durumunda kırmızı led yakan, algılamaması durumunda ise yeşil led yakan bir sistem oluşturduk.

bu sistemde elimizdeki hareket sensörünün toprak kısmını fpga de ki grnd kısmına güç kısmını 5V luk çıkışa ve son çıkışımızıda sinyallerin alış verişini sağlayan I/O portuna bağladık.

öncelikle .v dosyasında yazdığımız kodları sentezledik daha sonra floorplanner ile pinleri girişleri bağlayıp veri alış verişini sağladık en sonunda oluşan pinleri kaydederek fpga yi bilgisayarımıza bağladık ve çalıştırdık.

.v dosyasında oluşturduğumuz kodları inceleyelim:


pir sensör sinyalini kırmızı led ve yeşil led çıkışlarını tanımladık.

![image](https://github.com/aylanckerem/Embedded_-system_Projects_Passive_Capture_Sensor/assets/96474969/e97e6a0b-8071-4d23-90c8-ca03cec4fa22)

previous_state ve current_state isimli iki tane wire değişken tanımladık. 
Bu değişkenler, sensörün çalışmadan önce ve çalışırkenki durumunu belirtir.

![image](https://github.com/aylanckerem/Embedded_-system_Projects_Passive_Capture_Sensor/assets/96474969/6991ad83-72ff-4c40-bd00-d7bd5f5c20ab)

stabil olma ve hareket algılamya dair iki tane parametre tanımladık. 
Bunlar, ledin yanması için gerekecek stabil değerleri temsil eder.

![image](https://github.com/aylanckerem/Embedded_-system_Projects_Passive_Capture_Sensor/assets/96474969/b802641e-6b6d-422a-8120-32f657f69739)

previous_state ve current_state değişkenleri, pir_sensor girişine atanıyor. 
Bu değişkenler, sensörün çalışmadan önce ve çalışırkenki durumunları takip etmeyi sağlar.

![image](https://github.com/aylanckerem/Embedded_-system_Projects_Passive_Capture_Sensor/assets/96474969/32b8e4d2-c16b-4b57-8ee9-db864d4a7c3c)

Bu always bloğu, current_state değişkeninin değerine göre led çıkışlarını kontrol eder. 
Duruma bağlı olarak kırmızı ve yeşil ledlerin değerleri atayarak, kontrolünü sağlar.

Eğer current_state değeri stabil ise, kırmızı led kapalı ve yeşil led açık olacak şekilde ayarlanır.
Eğer current_state değeri hareketi algılıyor ise, kırmızı led açık ve yeşil led kapalı olacak şekilde ayarlanır.
Bu sayede, hareket algılama sensöründe hareket algılandığında kırmızı led yanar, aksi halde yeşil led yanar.

![image](https://github.com/aylanckerem/Embedded_-system_Projects_Passive_Capture_Sensor/assets/96474969/ebd6afac-7df9-4feb-a44e-8696d82a35e5)


aşşağıda projemize ait test videosunu görüntüleyebilirsiniz.

https://github.com/aylanckerem/Embedded_-system_Projects_Passive_Capture_Sensor/assets/96474969/e73c1424-6687-4378-ab17-cc7dcac5c301
