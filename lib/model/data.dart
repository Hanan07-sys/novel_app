import 'package:flutter/material.dart';

class DataNovel {
  String image;
  String title;
  String author;
  String rating;
  String genre1;
  String genre2;
  String status;
  String sinopsis;
  String chapter;
  String date;
  String content;

  DataNovel(
      {required this.image,
      required this.title,
      required this.rating,
      required this.genre1,
      required this.genre2,
      required this.status,
      required this.sinopsis,
      required this.chapter,
      required this.date,
      required this.author,
        required this.content,
      });
}

var DataNovelList = [
  DataNovel(
    title: 'Solo Leveling',
    image: 'images/solo-lev.jpg',
    author: 'Chu-Gong',
    rating: '4.5',
    genre1: 'Fantasy',
    genre2: 'Advanture',
    status: 'Ongoing',
    sinopsis:
        '10 tahun yang lalu, setelah "Gerbang" yang menghubungkan dunia nyata dengan dunia monster dibuka, beberapa orang biasa menerima kekuatan untuk berburu monster '
        'di dalam Gerbang. Mereka dikenal sebagai "Pemburu". Namun, tidak semua Pemburu kuat. Nama saya Sung Jin-Woo, '
        'Hunter E-rank. Aku adalah seseorang yang harus mempertaruhkan nyawanya di ruang bawah tanah paling rendah, "Yang Terlemah di Dunia".'
        'Tidak memiliki keterampilan apa pun untuk ditampilkan, saya hampir tidak mendapatkan uang yang dibutuhkan dengan bertarung di ruang bawah tanah tingkat rendah'
        '... setidaknya sampai saya menemukan ruang bawah tanah tersembunyi dengan kesulitan tersulit di dalam ruang bawah tanah peringkat-D! Pada akhirnya, saat saya menerima kematian, saya tiba-tiba menerima kekuatan aneh, log pencarian yang hanya bisa saya lihat, rahasia untuk naik level yang hanya saya yang tahu! Jika saya berlatih sesuai dengan pencarian saya dan monster yang diburu, level saya akan naik. Berubah dari Hunter terlemah menjadi Hunter S-rank terkuat!',
  chapter: 'Chapter 1: The E - Rank Hunter',
    date: '17 Februari 2019',
    content: 'Hunter Kelas E,Sung Jin Woo.\n\n'
        'Terlepas dari apa aku itu,aku hanyalah seorang pengikut barisan.\n'
        'berbeda dari orang biasa.\n\n'
        'Jadi aku selalu hidup dengan cedera.\n'
        'Ada sangat banyak peristiwa dimana aku berada diantara kematian.\n'
        'Tentu saja,aku tidak menjadi Hunter hanya karena aku suka.\n'
        'Pekerjaan itu berbahaya,selalu diabaikan,bahkan tidak memiliki hukum.\n'
        'Jika tidak ada bantuan medis untuk Hunter dari Asosiasi Hunter,aku akan berhenti jadi Hunter\n'
        'dan mulai menjalani kehidupan normal.\n\n'
        'Tapi sekarang,di pertengahan usia dua puluhan,Aku,Jin-woo,yang tidak memiliki keterampilan khusus,\n'
        'telah menjadi pemburu untuk biaya rumah sakit ibuku yang sakit.\n'
        'Bukankah kau pikir jika aku tidak ada punya pilihan lagi?\n'
        'Jadi hari itu,Aku menangis dan berpartisipasi dalam Raid yang diselenggarakan oleh asosiasi\n'
        'tanpa memiliki sejumlah mustard untuk dimakan.\n\n'
        '*** Hunter yang bekerja di daerah yang sama biasanya saling mengenal.\n'
        'Ketika Gates dibuka,para Hunter di daerah itu akan berkumpul bersama.\n'
        'Pertama,para Hunter akan saling menyapa dengan menyeruput kopi hangat yang diberikan oleh staf asosiasi\n',
  ),
  DataNovel(
      image: 'images/rankersreturn.jpeg',
      title: 'Rankers Return',
      author: 'Yeong Biram',
      rating: '3.9',
      genre1: 'Advanture',
      genre2: 'Sci-Fi',
      status: 'Ongoing',
      sinopsis: 'Hari-hari pertama di game arena virtual reality'
          ' '
          'Meleegod adalah pemain peringkat terkuat! Dia menghapus karakternya dan tiba-tiba menghilang. Untuk memulihkan keluarganya yang bangkrut, dia kembali ke Arena!'
          ' '
          '“Apakah kamu ingin membuat karakter?”',
  chapter: 'Chapter 1',
  date: '16 Januari 2020',
      content: 'Kung!\n\n'
          'Scorpion King raksasa, penguasa padang pasir, jatuh ke tanah.\n'
          'itu adalah akhir dari Raja Kalajengking, salah satu bos terbesar Arena. Hanya ada satu orang yang berdiri di depan mayat raja.\n\n'
          'Ah!!\n\n'
          '"Kali ini sedikit lebih baik," kata Hyeonu sambil meregangkan tubuh.\n'
          'Dia cukup santai menangkap bos serangan sendirian.\n'
          'Namun, ini wajar\n'
          'Gaya bertarungnya yang brilian dan sempurna memungkikannya menangkap monster bos, bahkan bos penyerbuan.\n'
          '"Sekarang apa yang harus aku tangkap? Aku akan bosan lagi sebentar, "gumam Hyeonu pelan"\n'
          'Meskpun, dia masih bosan hari ini.....\n\n'
          'Hyeonu meletakkan cangkirnya.\n'
          '"Kamu bekerja keras," dia menyapa orang - orang yang duduk di seberang dan kemudian segera meninggalkan tempat duduknya.\n\n'
          '"Tu-Tunggu sebentar!"\n\n'
          '"Hyeonu-ssi!"\n'
          'Meja depan Tim Permainan Professional JT Telecom, Supervisor Gang Ujong dan Pelatih Jeong Byeongjin mengejar Hyeonu dengan tergesa - gesa.'),
  DataNovel(
      image: 'images/overgears.jpg',
      title: 'OverGeared',
      author: 'Lee Dong Wook',
      rating: '4.0',
      genre1: 'Fantasy',
      genre2: 'Action',
      status: 'Ongoing',
      sinopsis:
          'Shin Youngwoo (alias Grid), seorang pria sial dalam hidup dan pemain level rendah dalam game VR populer “Satisfy,” menemukan item kuat yang memberinya gelar kelas legendaris yang langka: “Penerus Pagma.” Dia sekarang menjadi pandai besi yang terampil yang dapat menempa senjata unik dan melengkapi peralatan permainan yang paling kuat. Grid memutuskan untuk menggunakan kemampuan barunya untuk mencapai ketenaran dan kekayaan, tetapi ketika keberadaannya mulai menimbulkan masalah di Satisfy, dia menyadari bahwa hidup sebagai legenda mungkin lebih dari yang dia harapkan….',
  chapter: 'Chapter 1',
  date: '17 April 2019',
      content: '"Lima Menit Lagi!!"\n\n'
          'Delapan dari pemain peringkat teratas berkumpul disatu tempat di lantai 4 pencara cork island\n'
          'Peringkat tertinggi di antara mereka adalah Peak Sword, yang berada di peringkat ke - 16 pada peringkat gabungan keseluruhan.\n'
          'Di belakang mereka ada 200 anggota elit dari Persukutan Ksatria Perak.\n\n'
          'itu adalah pemandangan spektakuler dari pertemuan pengguna dengan kekuatan gabungan untuk menangkap sebuah benteng kecil. Tapi ketegangan dan kcemasan memenuhi wajah semua orang.\n\n'
          '"Empat menit lagi!!"\n\n'
          'Dengan berlalunya waktu, dan kegelisahan anggota guild mencapai puncak. Mereka dengan gelisah menggerakkan kaki mereka dan menggigiti kuku mereka sembari memandang sekeliling dengan gelap , tangan yang memegang pedangnya basah oleh keringat.\n'),
  DataNovel(
      image: 'images/nano.jpg',
      title: 'Nano Machine',
      author: 'Han Joong',
      rating: '5.0',
      genre1: 'Advanture',
      genre2: 'Murim',
      status: 'Ongoing',
      sinopsis:
          'Setelah direndahkan dan menghabiskan hidupnya dalam bahaya, seorang yatim piatu dari pemuja iblis, Yeo-Woon, mendapatkan kunjungan tak terduga dari keturunannya dari masa depan yang memasukkan sebuah mesin nano ke dalam tubuh Cheon-Woon, yang mengubah hidup Cheon Yeo Woon setelah aktivasi. '
              'Ikuti Cerita tentang perjalanan Cheon Yeo-Woon  '
              'melewati pemujaan setan dan naik menjadi yang ahli beladiri terbaik baru saja dimulai.',
  chapter: 'Chapter 1: The Legendary Nano',
  date: '5 Febriari 2019',
  content: 'Titik balik penting dahulu kala, seniman bela diri Jianghu biasa belajar seni bela diri untuk keselamatan dan perlindungan mereka sendiri terhadap musuh\n\n'
      'Namun seiring berjalannya waktu, seni bela diri berevolusi untuk membunuh musuh dengan lebih efisien dan berkembang menjadi lebih canggih dan rumit.\n\n'
      'Bentuk sederhana menjadi serangkaian gerakan, dan teknik pernapasan mewakili dasar - dasar energi internal.\n\n'
      'Seniman bela diri meninggalkan pusaka kepada generasi mendatang dengan buku dan ajaran tentang apa yang mereka pelajari, yang memungkinkan seni bela diri berkembang.\n\n'
      'Seniman bela diri segera menjadi orang - orang yang lebih kuat dari manusia normal karena mereka dapat berlari melalui pohon seperti angin, menghancurkan batu dengan tinju mereka, dan menebang pohon dengan ayunan pedang. Mereka disebut orang Wulin\n'),
];
