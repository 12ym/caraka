import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

const wordlist = [
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Sego",
    "hint": "Nasi",
    "icon": "lvl1/Nasi.png",
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Iwak",
    "hint": "Ikan",
    "icon": "lvl1/Ikan.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Endhog",
    "hint": "Telur",
    "icon": "lvl1/Telur.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Jenang",
    "hint": "Dodol",
    "icon": "lvl1/Dodol.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Wedang",
    "hint": "Air minum",
    "icon": "lvl1/Air-Minum.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Uyah",
    "hint": "Garam",
    "icon": "lvl1/Garam.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Gendis",
    "hint": "Gula",
    "icon": "lvl1/Gula.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Glepung",
    "hint": "Tepung",
    "icon": "lvl1/Tepung.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Janganan",
    "hint": "Sayur - mayur",
    "icon": "lvl1/Sayur-Mayur.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Brambang",
    "hint": "Bawang merah",
    "icon": "lvl1/Bawang-Merah.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Laos",
    "hint": "Lengkuas",
    "icon": "lvl1/Lengkuas.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Kunir",
    "hint": "Kunyit",
    "icon": "lvl1/Kunyit.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Gedang",
    "hint": "Pisang",
    "icon": "lvl1/Pisang.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Krambil",
    "hint": "Kelapa",
    "icon": "lvl1/Kelapa.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Pelem",
    "hint": "Mangga",
    "icon": "lvl1/Mangga.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Kates",
    "hint": "Pepaya",
    "icon": "lvl1/Pepaya.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Waluh",
    "hint": "Labu kuning",
    "icon": "lvl1/Labu-Kuning.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Bawang",
    "hint": "Bawang putih",
    "icon": "lvl1/Bawang-Putih.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Jangan",
    "hint": "Sayur",
    "icon": "lvl1/Sayur.png"
  },
  {
    "level": 1,
    "category": "Makanan & Minuman",
    "word": "Lawuh",
    "hint": "Lauk",
    "icon": "lvl1/Lauk.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Lor",
    "hint": "Utara",
    "icon": "lvl2/Utara.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Wetan",
    "hint": "Timur",
    "icon": "lvl2/Timur.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Kidul",
    "hint": "Selatan",
    "icon": "lvl2/Selatan.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Lor wetan",
    "hint": "Timur laut",
    "icon": "lvl2/Timur-Laut.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Kidul wetan",
    "hint": "Tenggara",
    "icon": "lvl2/Tenggara.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Kidul kulon",
    "hint": "Barat daya",
    "icon": "lvl2/Barat-Daya.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Lor kulon",
    "hint": "Barat laut",
    "icon": "lvl2/Barat-Laut.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Wingi",
    "hint": "Kemarin",
    "icon": "lvl2/Kemarin.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Surup",
    "hint": "Senja",
    "icon": "lvl2/Senja.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Sesuk",
    "hint": "Besok",
    "icon": "lvl2/Besok.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Awan",
    "hint": "Siang",
    "icon": "lvl2/Siang.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Saiki",
    "hint": "Sekarang",
    "icon": "lvl2/Sekarang.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Enjing",
    "hint": "Pagi",
    "icon": "lvl2/Pagi.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Tengah wengi",
    "hint": "Tengah malam",
    "icon": "lvl2/Tengah-Malam.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Mengko",
    "hint": "Nanti",
    "icon": "lvl2/Nanti.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Bengi",
    "hint": "Malam",
    "icon": "lvl2/Malam.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Sonten",
    "hint": "Sore",
    "icon": "lvl2/Sore.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Sesuk emben",
    "hint": "Lusa",
    "icon": "lvl2/Lusa.png"
  },
  {
    "level": 2,
    "category": "Arah Mata Angin + Waktu",
    "word": "Mbiyen",
    "hint": "Dulu",
    "icon": "lvl2/Dulu.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Klambi",
    "hint": "Baju",
    "icon": "lvl3/Baju.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Pengilon",
    "hint": "Cermin",
    "icon": "lvl3/Cermin.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Potelot",
    "hint": "Pensil",
    "icon": "lvl3/Pensil.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Blabak",
    "hint": "Papan tulis",
    "icon": "lvl3/Papan-Tulis.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Dluwang",
    "hint": "Kertas",
    "icon": "lvl3/Kertas.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Dusgrip",
    "hint": "Tempat pensil",
    "icon": "lvl3/Tempat-Pensil.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Katok",
    "hint": "Celana",
    "icon": "lvl3/Celana.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Dingklik",
    "hint": "Kursi kecil",
    "icon": "lvl3/Kursi-Kecil.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Kenap",
    "hint": "Meja",
    "icon": "lvl3/Meja.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Amben",
    "hint": "Kasur",
    "icon": "lvl3/Kasur.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Setip",
    "hint": "Penghapus",
    "icon": "lvl3/Penghapus.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Lemari",
    "hint": "Almari",
    "icon": "lvl3/Almari.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Kemul",
    "hint": "Selimut",
    "icon": "lvl3/Selimut.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Ongotan",
    "hint": "Rautan",
    "icon": "lvl3/Rautan.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Setut",
    "hint": "Sabuk",
    "icon": "lvl3/Sabuk.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Benges",
    "hint": "Lipstik",
    "icon": "lvl3/Lipstik.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Ciduk",
    "hint": "Gayung",
    "icon": "lvl3/Gayung.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Cikrak",
    "hint": "Serok sampah",
    "icon": "lvl3/Serok-Sampah.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Wedhak",
    "hint": "Bedak",
    "icon": "lvl3/Bedak.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Kepet",
    "hint": "Kipas",
    "icon": "lvl3/Kipas.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Klasa",
    "hint": "Tikar",
    "icon": "lvl3/Tikar.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Peso",
    "hint": "Pisau",
    "icon": "lvl3/Pisau.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Lawang",
    "hint": "Pintu",
    "icon": "lvl3/Pintu.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Cowek",
    "hint": "Cobek",
    "icon": "lvl3/Cobek.png"
  },
  {
    "level": 3,
    "category": "Kata Benda",
    "word": "Munthu",
    "hint": "Ulekan",
    "icon": "lvl3/Ulekan.png"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Tuku",
    "hint": "Membeli"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Mangan",
    "hint": "Makan"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Mlaku",
    "hint": "Berjalan"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Ndelok",
    "hint": "Melihat"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Mangertos",
    "hint": "Mengerti"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Ngadek",
    "hint": "Berdiri"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Nyekel",
    "hint": "Memegang"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Lungguh",
    "hint": "Duduk"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Ngombe",
    "hint": "Minum"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Nyilih",
    "hint": "Meminjam"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Omong",
    "hint": "Bicara"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Ngenyang",
    "hint": "Menawar"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Teka",
    "hint": "Datang"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Lunga",
    "hint": "Pergi"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Ngambung",
    "hint": "Mencium"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Ngadoh",
    "hint": "Menjauh"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Nyedhak",
    "hint": "Mendekat"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Mandhek",
    "hint": "Berhenti"
  },
  {"level": 4, "category": "Kata Kerja Fisik", "word": "Mlayu", "hint": "Beli"},
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Ngalangi",
    "hint": "Menghalangi"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Mendelik",
    "hint": "Melotot"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Krungu",
    "hint": "Mendengar"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Ngarani",
    "hint": "Menyebut"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Ndelehake",
    "hint": "Meletakkan"
  },
  {
    "level": 4,
    "category": "Kata Kerja Fisik",
    "word": "Nglirik",
    "hint": "Melirik"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Nglarani",
    "hint": "Menyakiti"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Tresna",
    "hint": "Cinta"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Nangis",
    "hint": "Menangis"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Ayu",
    "hint": "Cantik"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Elek",
    "hint": "Jelek"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Lungkrah",
    "hint": "Lemas"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Nelongso",
    "hint": "Sedih"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Dhuwur",
    "hint": "Tinggi"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Cendhak",
    "hint": "Pendek"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Mikir",
    "hint": "Berpikir"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Ngelamun",
    "hint": "Melamun"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Panemu",
    "hint": "Pendapat"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Setya",
    "hint": "Setia"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Getun",
    "hint": "Menyesal"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Legawa",
    "hint": "Ikhlas"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Mangkel",
    "hint": "Kesal"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Ngira",
    "hint": "Memperkirakan"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Nglokro",
    "hint": "Putus asa"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Maklumi",
    "hint": "Memaklumi"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Nolak",
    "hint": "Menolak"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Trenyuh",
    "hint": "Terharu"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Kenes",
    "hint": "Centil"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Wengis",
    "hint": "Kejam"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Sumelang",
    "hint": "Khawatir"
  },
  {
    "level": 5,
    "category": "Kata Kerja Mental",
    "word": "Nyimpulke",
    "hint": "Menyimpulkan"
  }
];

const Duration gameAnimationDuration = Duration(milliseconds: 300);
const Curve gameAnimationCurve = Curves.easeInQuart;
const Curve gameShakeAnimationCurve = SawTooth(4);

const BoxShadow gameBoxShadow = BoxShadow(
  color: Colors.black12,
  blurRadius: 10,
);
BoxDecoration curvedBox = BoxDecoration(borderRadius: BorderRadius.circular(8));
const backgroundBoxColor = Color.fromRGBO(255, 255, 255, .4);
const winBackgroundGradient = LinearGradient(
  colors: [
    Color.fromRGBO(130, 244, 177, 1),
    Color.fromRGBO(48, 198, 124, 1),
  ],
  end: Alignment(0, 1),
);
const lossBackgroundGradient = LinearGradient(
  colors: [
    Color.fromRGBO(255, 184, 142, 1),
    Color.fromRGBO(234, 87, 83, 1),
  ],
  end: Alignment(0, 1),
);

final AudioPlayer globalAudioPlayer = AudioPlayer();
