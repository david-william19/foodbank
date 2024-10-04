class Food {
  final int id;
  final String name;
  final int price;
  final String image;
  final String description;
  final List<String> ingredients;
  final List<String> steps;

  Food({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.ingredients,
    required this.steps
  });
}

var indonesianFoods = [
  Food(
    id: 1,
    name: 'Nasi Goreng',
    price: 15000,
    image: 'images/nasi_goreng.jpg',
    description: 'Nasi goreng adalah makanan yang terbuat dari nasi yang digoreng dan diaduk dalam minyak goreng, biasanya ditambah kecap manis, bawang merah, bawang putih, merica, lada, garam, cabai, irisan daging ayam, udang, atau telur dan bahan lain seperti kecap, saus tiram, bawang merah, bawang putih, cabai, lada, garam, dan bumbu lain sesuai selera.',
    ingredients: [
      "2 porsi nasi putih dingin",
      "2 butir telur",
      "3 siung bawang putih (cincang halus)",
      "2 siung bawang merah (cincang halus)",
      "2 sendok makan kecap manis",
      "1 sendok makan saus tiram",
      "1 sendok teh garam",
      "1/2 sendok teh merica",
      "1/2 sendok teh terasi (opsional)",
      "Minyak goreng secukupnya",
      "Bawang goreng (untuk taburan)",
      "Irisan timun dan tomat (untuk pelengkap)"
    ],
    steps: [
      "Panaskan sedikit minyak, buat orak-arik telur. Angkat dan sisihkan.",
      "Tambahkan minyak dan tumis bawang putih, bawang merah, dan terasi hingga harum.",
      "Masukkan nasi dingin, kecap manis, saus tiram, garam, dan merica. Aduk rata.",
      "Tambahkan telur orak-arik, aduk hingga rata dan matang sempurna.",
      "Sajikan dengan bawang goreng, irisan timun, dan tomat."
    ]
  ),
  Food(
    id: 2,
    name: 'Sate Ayam',
    price: 20000,
    image: 'images/sate.jpg',
    description: 'Sate ayam adalah makanan yang terdiri dari potongan daging ayam yang ditusuk dengan tusukan bambu, kemudian dipanggang dengan arang. Sate ayam biasanya disajikan dengan bumbu kacang atau kecap.',
    ingredients: [
      "500 gram daging ayam fillet (potong dadu kecil)",
      "10 tusuk sate",
      "2 siung bawang putih (haluskan)",
      "1 sendok teh ketumbar",
      "1 sendok makan kecap manis",
      "1 sendok makan minyak sayur",
      "Garam dan merica secukupnya"
    ],
    steps: [
      "Campurkan daging ayam dengan bawang putih, ketumbar, kecap manis, minyak, garam, dan merica. Diamkan selama 30 menit.",
      "Tusuk daging ayam dengan tusuk sate.",
      "Panggang sate di atas bara api atau grill hingga matang, sambil olesi dengan kecap manis.",
      "Sajikan sate dengan saus kacang."
    ]
  ),
  Food(
    id: 3,
    name: 'Rendang',
    price: 25000,
    image: 'images/rendang.jpg',
    description: 'Rendang adalah masakan daging sapi yang berasal dari Minangkabau, Sumatera Barat, Indonesia. Masakan ini menggunakan potongan daging sapi yang dimasak dalam waktu yang lama dengan campuran santan dan bumbu rempah-rempah.',
    ingredients: [
      "1 kg daging sapi (potong dadu besar)",
      "400 ml santan kental",
      "5 lembar daun jeruk",
      "2 batang serai (memarkan)",
      "2 lembar daun kunyit",
      "3 lembar daun salam",
      "1 sendok makan garam",
      "1 sendok teh gula merah",
      "6 siung bawang putih",
      "8 butir bawang merah",
      "4 buah cabai merah besar",
      "5 cm jahe",
      "5 cm lengkuas",
      "3 cm kunyit",
      "1 sendok makan ketumbar"
    ],
    steps: [
      "Tumis bumbu halus bersama serai, daun jeruk, daun kunyit, dan daun salam hingga harum.",
      "Masukkan potongan daging sapi, aduk hingga berubah warna.",
      "Tambahkan santan kental, garam, dan gula merah. Masak dengan api kecil sambil terus diaduk.",
      "Masak hingga daging empuk dan santan mengental serta berubah warna coklat gelap. Proses ini memakan waktu sekitar 2-3 jam.",
      "Sajikan rendang dengan nasi hangat."
    ]
  ),
  Food(
    id: 4,
    name: 'Gado-Gado',
    price: 15000,
    image: 'images/gado-gado.jpg',
    description: 'Gado-gado adalah makanan berupa sayur-sayuran yang direbus dan dicampur jadi satu, lalu diberi bumbu kacang. Gado-gado biasanya disajikan dengan telur rebus, tahu, tempe, dan kerupuk.',
    ingredients: [
      "100 gram kangkung (rebus)",
      "100 gram tauge (rebus)",
      "1 buah kentang (rebus dan potong dadu)",
      "1 buah tahu (goreng dan potong dadu)",
      "1 buah tempe (goreng dan potong dadu)",
      "1 butir telur rebus (potong jadi dua)",
      "Timun dan tomat (iris tipis)",
      "150 gram kacang tanah goreng",
      "2 siung bawang putih",
      "3 buah cabai merah",
      "1 sendok makan gula merah",
      "2 sendok makan kecap manis",
      "Air secukupnya",
      "Garam secukupnya"
    ],
    steps: [
      "Haluskan kacang tanah, bawang putih, cabai merah, gula merah, dan garam.",
      "Tambahkan air secukupnya hingga saus kacang mencapai kekentalan yang diinginkan. Tambahkan kecap manis.",
      "Tata sayuran yang sudah direbus, tahu, tempe, dan telur di atas piring.",
      "Siram dengan saus kacang dan sajikan."
    ]
  ),
  Food(
    id: 5,
    name: 'Soto Ayam',
    price: 15000,
    image: 'images/soto.jpg',
    description: 'Soto ayam adalah makanan berupa sup ayam yang disajikan dengan kuah bening. Soto ayam biasanya disajikan dengan nasi, telur rebus, dan bawang goreng.',
    ingredients: [
      "1/2 ekor ayam (rebus dan suwir)",
      "2 liter air kaldu ayam",
      "2 batang serai (memarkan)",
      "3 lembar daun jeruk",
      "2 lembar daun salam",
      "2 cm lengkuas (memarkan)",
      "1 sendok makan garam",
      "1/2 sendok teh gula pasir",
      "5 siung bawang putih",
      "6 butir bawang merah",
      "3 cm kunyit",
      "3 cm jahe",
      "1 sendok teh ketumbar",
      "Soun, tauge, dan telur rebus (untuk pelengkap)"
    ],
    steps: [
      "Tumis bumbu halus, serai, daun jeruk, daun salam, dan lengkuas hingga harum.",
      "Masukkan ke dalam air kaldu ayam, tambahkan garam dan gula pasir.",
      "Masukkan ayam suwir ke dalam kuah, masak hingga mendidih.",
      "Sajikan soto dengan soun, tauge, dan telur rebus. Tambahkan sambal dan perasan jeruk nipis sesuai selera."
    ]
  ),
  Food(
    id: 6,
    name: 'Bakso',
    price: 15000,
    image: 'images/bakso.jpg',
    description: 'Bakso adalah makanan berupa bola daging yang biasanya terbuat dari daging sapi yang dicampur dengan tepung tapioka. Bakso biasanya disajikan dengan mie, bihun, tahu, dan sayuran.',
    ingredients: [
      "500 gram daging sapi giling",
      "100 gram tepung tapioka",
      "4 siung bawang putih (haluskan)",
      "1 butir telur",
      "1 sendok teh merica",
      "1 sendok teh garam",
      "1/2 sendok teh baking powder (opsional)",
      "Air untuk merebus",
      "2 liter kaldu sapi",
      "3 siung bawang putih (goreng dan haluskan)",
      "Garam dan merica secukupnya",
      "Soun dan tahu (untuk pelengkap)"
    ],
    steps: [
      "Campurkan daging sapi, bawang putih, tepung tapioka, telur, merica, garam, dan baking powder hingga rata.",
      "Bentuk adonan daging menjadi bola-bola kecil.",
      "Rebus bakso dalam air mendidih hingga mengapung, angkat dan tiriskan.",
      "Untuk kuah, panaskan kaldu sapi, tambahkan bawang putih goreng yang sudah dihaluskan, garam, dan merica.",
      "Sajikan bakso dengan kuah, soun, tahu, dan pelengkap lainnya."
    ]
  ),
];
