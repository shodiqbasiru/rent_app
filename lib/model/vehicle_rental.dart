class VehicleRental {
  String id;
  String name;
  String type;
  String brand;
  int year;
  int pricePerDay;
  bool isAvailable;
  String image;
  List<String> imageUrls;

  VehicleRental({
    required this.id,
    required this.name,
    required this.type,
    required this.brand,
    required this.year,
    required this.pricePerDay,
    required this.isAvailable,
    required this.image,
    required this.imageUrls,
  });
}

var listVehicleRental = <VehicleRental>[
  VehicleRental(
    id: '1',
    name: 'Toyota Avanza',
    type: 'Car',
    brand: 'Toyota',
    year: 2021,
    pricePerDay: 250000,
    isAvailable: true,
    image: 'images/toyota-avanza.jpg',
    imageUrls: [
      'https://imgcdn.oto.com/large/gallery/exterior/38/1654/toyota-avanza-side-view-211674.jpg',
      'https://imgcdn.oto.com/large/gallery/exterior/38/1654/toyota-avanza-rear-angle-view-738256.jpg',
      'https://img.cintamobil.com/2021/12/25/KM1pHMws/all-new-avanza-tipe-e-manual-28a2.jpeg',
    ],
  ),
  VehicleRental(
    id: '2',
    name: 'Honda Beat',
    type: 'Motorcycle',
    brand: 'Honda',
    year: 2021,
    pricePerDay: 100000,
    isAvailable: false,
    image: 'images/honda-beat.jpg',
    imageUrls: [
      'https://upload.wikimedia.org/wikipedia/commons/d/da/2020_Honda_BeAT_CBS_110_%2820211007%29.jpg',
      'https://imgx.gridoto.com/crop/47x0:568x421/700x465/photo/2019/08/27/3550204928.png',
      'https://ik.imagekit.io/carro/jualo/original/29188797/image_20201227-17632-73k71c.jpg?v=1609079787',
    ],
  ),
  VehicleRental(
    id: '3',
    name: 'Yamaha NMAX',
    type: 'Motorcycle',
    brand: 'Yamaha',
    year: 2021,
    pricePerDay: 150000,
    isAvailable: true,
    image: 'images/yamaha-nmax.jpg',
    imageUrls: [
      'https://imgcdn.oto.com/medium/gallery/exterior/84/2358/yamaha-nmax-connected-slant-rear-view-full-image-577364.jpg',
      'https://motoblast.org/wp-content/uploads/2015/02/wpid-fb_img_1424433045850.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/2020_Yamaha_NMAX_155_ABS_%2820200810%29_01.jpg/1200px-2020_Yamaha_NMAX_155_ABS_%2820200810%29_01.jpg',
    ],
  ),
  VehicleRental(
    id: '4',
    name: 'Suzuki Ertiga',
    type: 'Car',
    brand: 'Suzuki',
    year: 2021,
    pricePerDay: 300000,
    isAvailable: true,
    image: 'images/suzuki-ertiga.jpg',
    imageUrls: [
      'https://imgx.gridoto.com/crop/21x65:1279x837/700x465/photo/2021/03/04/whatsapp-image-2021-03-04-at-22-20210304101304.jpeg',
      'https://images.autofun.co.id/file1/ffa5c9269536497ea685edee6695d5fa_750x380.jpg',
      'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/8/16/4f6cf26d-524f-4eeb-a50c-b731a10514be.jpg',
    ],
  ),
  VehicleRental(
    id: '5',
    name: 'Toyota Yaris',
    type: 'Car',
    brand: 'Toyota',
    year: 2021,
    pricePerDay: 350000,
    isAvailable: false,
    image: 'images/toyota-yaris.jpg',
    imageUrls: [
      'https://img.indianautosblog.com/crop/1200x675/2016/11/Toyota-Yaris-TRD-Sportivo-special-edition-front-three-quarter-at-the-Thai-Motor-Expo.jpg',
      'https://img.philkotse.com/crop/600x338/2023/03/30/20230330100956-763b_wm.jpg',
      'https://cf.autodeft2.pw/uploads/images/2018/Toyota/Toyota%20Yaris/2018-Toyota-Yaris-TRD-Sportivo-facelift-front-three-quarters-left-side-spy-shot.jpg',
    ],
  ),
  VehicleRental(
    id: '6',
    name: 'Honda PCX',
    type: 'Motorcycle',
    brand: 'Honda',
    year: 2021,
    pricePerDay: 200000,
    isAvailable: true,
    image: 'images/honda-pcx.jpg',
    imageUrls: [
      'https://imgcdn.oto.com/large/gallery/exterior/73/1895/honda-pcx-slant-rear-view-full-image-444836.jpg',
      'https://images.bisnis.com/posts/2020/11/11/1316502/spesifikasi-all-new-honda-pcx-2021.jpg',
      'https://awsimages.detik.net.id/community/media/visual/2020/12/09/honda-pcx-160_169.jpeg?w=620',
    ],
  ),
];
