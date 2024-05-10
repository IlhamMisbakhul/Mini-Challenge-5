import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wisata_bandung/details.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/1.jpeg',
    price: 'Rp 200.000 (Hari Biasa) & Rp 300.000 (Hari Libur)',
    place: 'Trans Studio Bandung',
    location: 'Cibangkong',
    open: '10.00 - 17.00',
    details:
        'Salah satu tempat wisata paling populer di Bandung adalah Trans Studio yang merupakan taman hiburan yang berisi banyak sekali atraksi menarik.',
  ),
  ImageDetails(
    imagePath: 'images/2.jpeg',
    price: 'Free',
    place: 'Jalan Braga',
    location: 'Jalan Braga, Kota Bandung',
    open: '24 Jam',
    details:
        'Di jalan Braga terdapat banyak sekali restoran dan cafe yang sering dikunjungi oleh keluarga dan anak muda untuk sekadar santai dan menikmati suasana Kota Bandung.',
    ),
  ImageDetails(
    imagePath: 'images/3.jpeg',
    price: 'Rp 5000',
    place: 'Museum Gedung Sate',
    location: 'Jalan Diponegoro',
    open: '09.00 - 17.00',
    details:
        'Sebenarnya, Gedung Sate saat ini berfungsi sebagai kantor Pemerintah Provinsi Jawa Barat. Namun, gedung ini juga menjadi landmark Kota Bandung sekaligus destinasi wisata.',
    ),
  ImageDetails(
    imagePath: 'images/4.jpeg',
    price: 'Rp 50.000',
    place: 'The Great Asia Africa',
    location: 'Jalan Raya Lembang – Bandung No 71, Kabupaten Bandung Barat',
    open: '09.00 - 18.00',
    details:
        'The Great Asia Africa merupakan theme park atau taman bermain yang mengusung tema unik, yaitu replika desa-desa terkenal di Asia dan Afrika.',
    ),
  ImageDetails(
   imagePath: 'images/5.jpeg',
    price: 'Rp 35.000',
    place: 'Lembang Floating Market',
    location: 'Jalan Grand Hotel No. 33E, Kabupaten Bandung Barat',
    open: '08.00 – 19.00 (hari libur), 09.00 -18.00 (hari biasa)',
    details:
        'Sesuai namanya, atraksi utama yang ditawarkan oleh Lembang Floating Market adalah sebuah pasar apung di atas danau.',
    ),
  ImageDetails(
    imagePath: 'images/6.jpeg',
    price: 'Rp 40.000 (wisatawan lokal), Rp 100.000 (turis)',
    place: 'Orchid Forest Cikole',
    location: 'Genteng, Cikole, Kabupaten Bandung Barat',
    open: '08.00 – 19.00 (hari libur), 09.00 -18.00 (hari biasa)',
    details:
        'Ini merupakan salah satu tempat wisata di Bandung yang tebaru dan sedang viral. Suasana sejuk di area hutan dan taman bunga anggrek menjadi daya tarik tersendiri bagi wisatawan.',
    ),
  ImageDetails(
    imagePath: 'images/7.jpeg',
    price: 'Rp 25.000 (tiket masuk), Rp 40.000 – Rp 900.000 (paket camping)',
    place: 'Ranca Upas',
    location: 'Jl. Camp Ranca Upas, Rancabali, Kabupaten Bandung',
    open: '24 jam',
    details:
        'Ranca Upas merupakan salah satu tempat perkemahan yang dikelilingi oleh hutan lindung. Ada fasilitas lain yang akan menambah keseruan liburanmu, mulai dari ATV, kolam renang, dan outbound.',
    ),
  ImageDetails(
    imagePath: 'images/8.jpeg',
    price: 'Rp 40.000',
    place: 'Dago Dreampark',
    location: 'Jl. Dago Giri, Mekarwangi Lembang, Kabupaten Bandung Barat',
    open: '08.00 – 19.00 (hari libur), 09.00 -18.00 (hari biasa)',
    details:
        'Dilansir dari situs resminya, ada banyak wahana menarik yang bisa wisatawan coba, seperti spot foto dari ketinggian, offroad dengan Jeep, wahana bermain anak, dan masih banyak lagi.',
    ),
  ImageDetails(
    imagePath: 'images/9.jpeg',
    price: 'Rp 35.000',
    place: 'Farmhouse Lembang',
    location: 'Jl. Raya Lembang No 108, Lembang, Kabupaten Bandung Barat',
    open: '08.00 – 19.00 (hari libur), 09.00 -18.00 (hari biasa)',
    details:
        'Tempat wisata di Bandung berikutnya adalah Farmhouse Lembang. Sesuai namanya, tempat ini memiliki tema peternakan, namun dengan gaya Eropa.',
    ),
  ImageDetails(
    imagePath: 'images/10.jpeg',
    price: 'Rp 30.000 (wisatawan lokal), Rp 80.000 (turis)',
    place: 'Kawah Putih',
    location: 'Jl. Raya Ciwidey Patengan, Pasirjambu, Kabupaten Bandung',
    open: '08.00 – 19.00 (hari libur), 09.00 -18.00 (hari biasa)',
    details:
        'Kawah putih merupakan sebuah danau yang terbentuk dari letusan Gunung Patuha.',
    ),
  ImageDetails(
    imagePath: 'images/11.jpeg',
    price: 'Rp 35.000',
    place: 'Kebun Stroberi Ciwidey',
    location: 'Jl. Ciwidey Patengan, Kabupaten Bandung',
    open: '11.00 – 20.00',
    details:
        'Kebun Strawberry Ciwidey terkenal memiliki ciri buah yang relatif lebih besar, segar dengan warna yang merah menyala dan rasanya yang cukup manis.',
    ),
  ImageDetails(
    imagePath: 'images/12.jpeg',
    price: 'Rp 20.000 (hari biasa) Rp 30.000 (hari kerja) (note : dari webnya glints.com nya begitu), mungkin hari libur maksudnya?',
    place: 'Tangkuban Perahu',
    location: 'Lembang, Kabupaten Bandung Barat',
    open: '11.00 – 20.00',
    details:
        'Terdapat 3 kawah berbeda yang ada di Tangkuban Perahu, yaitu Kawah Ratu, Kawah Upas, dan Kawah Domas.',
    ),
  ImageDetails(
    imagePath: 'images/13.jpeg',
    price: 'tiket masuk gratis, tiket wahana mulai dari Rp 20.000',
    place: 'Noah’s Park',
    location: 'Jalan Sukanagara No. 20, Lembang, Kabupaten Bandung Barat',
    open: '09.00 – 17.00',
    details:
        'Noah’s Park ini termasuk tempat wisata terbaru di Bandung karena mulai beroperasi pada tahun 2022.',
    ),
  ImageDetails(
    imagePath: 'images/14.jpeg',
    price: 'Rp 12.000',
    place: 'Tebing Keraton',
    location: 'Puncak Kordon, Ciburial, Kabupaten Bandung Barat',
    open: '08.00 – 16.00',
    details:
        'Ingin menikmati udara sejuk sambil melihat hamparan Bandung dari ketinggian? Coba kunjungi Tebing Keraton. Akan tetapi, kamu harus siap menempuh perjalanan yang sedikit berat saat menuju atas bukitnya.',
    ),
  ImageDetails(
    imagePath: 'images/15.jpeg',
    price: 'Rp 20.000 (hari biasa), Rp 40.000 (hari libur)',
    place: 'Dusun Bambu',
    location: 'Jl. Kolonel Masturi, Kertawangi, Kabupaten Bandung Barat',
    open: '09.00 – 20.00',
    details:
        'Dilansir dari website Dusun Bambu, daya tarik utama yang ditawarkan untuk pengunjung adalah suasana desa tradisional dengan berbagai pilihan restoran dan hamparan alam di sekitarnya.t.',    
    ),
  ImageDetails(
    imagePath: 'images/16.jpeg',
    price: 'Rp 20.000)',
    place: 'Air Terjun Pelangi',
    location: 'Jl. Kolonel Masturi, Kertawangi, Kabupaten Bandung Barat',
    open: '07.00 – 17.00',
    details:
        'Dinamakan Air Terjun Pelangi karena pengunjung sering melihat pelangi di air terjun ini.',
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)
          )
        ),
        title: const Text(
          'WISATA BANDUNG',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, constraints){
          if (constraints.maxWidth < 600){
            return ListView.builder(
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          imagePath: _images[index].imagePath, 
                          place: _images[index].place, 
                          location: _images[index].location, 
                          price: _images[index].price, 
                          open: _images[index].open,
                          details: _images[index].details, index: index) )
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    child: Hero(
                      tag: 'logo$index',
                      child: Row(
                        children: [
                          const SizedBox(width: 30),
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(_images[index].imagePath),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                          const SizedBox(width: 50,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_images[index].place),
                                Text(_images[index].location)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
          });
          } else if(constraints.maxWidth < 900){
            return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              place: _images[index].place,
                              location: _images[index].location,
                              price: _images[index].price,
                              open: _images[index].open,
                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            ),
          ],
        );
          } else {
            return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              place: _images[index].place,
                              location: _images[index].location,
                              price: _images[index].price,
                              open: _images[index].open,
                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        );
          }
        }
    ));
  }
}
class ImageDetails {
  final String imagePath;
  final String price;
  final String place;
  final String location;
  final String open;
  final String details;
  ImageDetails({
    required this.imagePath,
    required this.price,
    required this.place,
    required this.location,
    required this.open,
    required this.details,
  });
}