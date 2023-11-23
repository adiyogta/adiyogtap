// ignore_for_file: unnecessary_import

class ListKategori {
  final String nama;
  final String url;
  final String detal;
  final String? link;

  ListKategori({
    required this.nama,
    required this.url,
    required this.detal,
    required this.link,
  });
}

class Kategori {
  final String nama;
  final List<ListKategori> listKategori;

  Kategori({
    required this.nama,
    required this.listKategori,
  });
}

final List<Kategori> kategori = [
  Kategori(
    nama: 'Flutter',
    listKategori: [
      ListKategori(
        nama: 'Portofolio',
        url: 'https://drive.google.com/uc?id=1dRVvyCBVe1UVp04d7jpqkZFsljPxMWd1',
        detal: 'Website portofolio saya yang dibuat menggunakan flutter',
        link: 'https://github.com/adiyogta/adiyogtap'
      ),
      ListKategori(
        nama: 'Aplikasi Arisan',
        url: 'https://drive.google.com/uc?id=1dS5jnihwX0nEtNQr1gGIh1Zm-by5JJT6',
        detal: 'Aplikasi Arisan untuk perusahaan Money Kingdom Yogyakarta dalam menjalankan arisan menurun',
        link: 'https://github.com/adiyogta/aplikasi_arisan_money_kingdom'
      ),
    ],
  ),
   Kategori(
    nama: 'Desain',
    listKategori: [
      ListKategori(
        nama: 'X Banner',
        url: 'https://drive.google.com/uc?id=1d--VNg4qIVs7tzhNOuF-0Zb2z9GXWgZI',
        detal: 'X-Banner Penjualan Cincin pada saat saya bekerja di Latifa Jewelry',
        link: null
      ),
      ListKategori(
        nama: 'X Banner',
        url: 'https://drive.google.com/uc?id=1d0sXsU8whS-sGXjoIDOdy4eqRr1rhNCC',
        detal: 'X-Banner Penjualan Cincin pada saat saya bekerja di Latifa Jewelry',
        link: null
      ),
      ListKategori(
        nama: 'X Banner',
        url: 'https://drive.google.com/uc?id=1czFDItUaSD4FI0xcwm-2-W_t3UYxEs0U',
        detal: 'X-Banner Penjualan Cincin pada saat saya bekerja di Latifa Jewelry',
        link: null
      ),
      ListKategori(
        nama: 'Logo',
        url: 'https://drive.google.com/uc?id=11uWowPSKvqDXGDLXiLsCtuq-XXN7nijQ',
        detal: 'Logo perusahaan yang bergerak dibidang cathering makanan dan dekorasi pernikahan',
        link: null
      ),
      ListKategori(
        nama: 'Poster',
        url: 'https://drive.google.com/uc?id=1d7GawDRoSUvMjtYzxAz7ZN-EPFn2JGrd',
        detal: 'Poster untuk pembukaan lowongan kerja baru untuk perusahaan Latifa Jewelry',
        link: null
      ),
      ListKategori(
        nama: 'Poster',
        url: 'https://drive.google.com/uc?id=11T_l0WpysxIO1hGwL8Ph3loNHOglz2b5',
        detal: 'Poster untuk perlombaan online influencer di Game Mobile Legends',
        link: null
      ),
      ListKategori(
        nama: 'Logo',
        url: 'https://drive.google.com/uc?id=12CV4r52KonvWmiiAYaBNI3CqdM2aGxYw',
        detal: 'Logo desain untuk sebuah akun Instagram',
        link: null
      ),
      ListKategori(
        nama: 'Kartu Nama',
        url: 'https://drive.google.com/uc?id=11t8JR78IbYBD4OoPGvSNMGO2AHWdEgCl',
        detal: 'Kartu Nama perusahaan yang bergerak dibidang cathering makanan dan dekorasi pernikahan',
        link: null
      ),
      ListKategori(
        nama: 'Kartu Ucapan',
        url: 'https://drive.google.com/uc?id=11i2xiqDujOCDmq39GCIH6FbIDgJdZcDb',
        detal: 'Kartu Ucapan untuk lahiran anak',
        link: null
      ),
      ListKategori(
        nama: 'Feed Instagram',
        url: 'https://drive.google.com/uc?id=1d25HRlxL1f7THE_PzZnwIBHQ1eZ4IXIe',
        detal: 'Fed Instagram Penjualan Cincin pada saat saya bekerja di Latifa Jewelry',
        link: null
      ),
      ListKategori(
        nama: 'Cover Buku',
        url: 'https://drive.google.com/uc?id=11_nURqqQrjva5UMcf8B2TeXN8etpL0Za',
        detal: 'Cover buku untuk sekolah sebagai buku kurikulum',
        link: null
      ),
      ListKategori(
        nama: 'Karikatur',
        url: 'https://drive.google.com/uc?id=12BpCnEpiBT8sD6Xk-TpGQfNYbElls8ar',
        detal: 'Karikatur Pesanan dari teman',
        link: null
      ),
    ],
    
  ),
  Kategori(
    nama: 'UI / UX',
    listKategori: [
      ListKategori(
        nama: 'Aplikasi Arisan',
        url: 'https://drive.google.com/uc?id=1dS5jnihwX0nEtNQr1gGIh1Zm-by5JJT6',
        detal: 'Desain ui dari aplikasi arisan money kingdom',
        link: 'https://www.figma.com/file/ubJy1NXJGeC2hUMXDPl2AQ/admin-morrich?type=design&node-id=0%3A1&mode=design&t=HOqVU10gdTWKleBx-1' 
      ),
     ],
  ),
   Kategori(
    nama: 'Foto',
    listKategori: [
      ListKategori(
        nama: 'Kebun',
        url: 'https://drive.google.com/uc?id=1dFDGh-gz2AwcLCDIsn4pwI52Hv0vm28-',
        detal: 'Foto Produk dan Kebun untuk usaha Salada diperusahaan BWS Sleman',
        link: null
      ),
      ListKategori(
        nama: 'Kebun',
        url: 'https://drive.google.com/uc?id=1dKn8zDcfMAR011rvlqcX7xPWnLt0uLaC',
        detal: 'Foto Produk dan Kebun untuk usaha Salada diperusahaan BWS Sleman',
        link: null
      ),
      ListKategori(
        nama: 'Kebun',
        url: 'https://drive.google.com/uc?id=1dPpcKYruo4lYF7V2883-JiQNH58Zs8-y',
        detal: 'Foto Produk dan Kebun untuk usaha Salada diperusahaan BWS Sleman',
        link: null
      ),
      ListKategori(
        nama: 'Kebun',
        url: 'https://drive.google.com/uc?id=1dAy9E8_YZ8YcOQ3RUhpfTS-YfI9z0hYm',
        detal: 'Foto Produk dan Kebun untuk usaha Salada diperusahaan BWS Sleman',
        link: null
      ),
    ],
  ),
   Kategori(
    nama: 'Video',
    listKategori: [
      ListKategori(
        nama: 'Shorts YT',
        url: '1d8vZo1TO6eL7fyPFdz5dgboy6P5Fhqj2',
        detal: 'Video Youtube Short untuk channel Jago Kicau',
        link: null 
      ),
      ListKategori(
        nama: 'Reels IG',
        url: '1d7Cdc3xVANzzRbrZ9XyPEolqRZ459pQm',
        detal: 'Video Giveaway saat masih bekerja di perusahaan Latifa Jewelry',
        link: null
      ),
      ListKategori(
        nama: 'Reels IG',
        url: '1d9ZK72ICYaxyHVVdB085HmtCgMekhbVE',
        detal: 'Video Giveaway saat masih bekerja di perusahaan Latifa Jewelry',
        link: null
      ),
    ],
  ),
];

