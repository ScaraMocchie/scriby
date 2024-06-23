class Materi {
  final String judulMateri;
  final List<Isi> subJudul;
  final String image;
  final List<List<String>> vocab;

  Materi({required this.judulMateri, this.subJudul = const[], required this.image, this.vocab = const[]});
}

class Isi {
  final String content;
  final String type;
  // final List<String> vocab;

  Isi({required this.content, required this.type,});
}

class DataMateri{
  static Materi materiVocab = vocabMaterials[1]; //ini perlu diset pas pilih vocab
  static String judulVocab = ''; //ini perlu diset pas pilih vocab
  static String? materialType = "Vocabulary";

  // list materi flip card
  static List<Materi> vocabMaterials = [
    Materi(
      image: "https://img.freepik.com/free-vector/flat-design-schizophrenia-illustration_23-2149364625.jpg",
      judulMateri: "Emotions",
      vocab: [
        ["Penerimaan", "Acceptance", "https://cdn-icons-png.flaticon.com/512/3409/3409521.png", 'Complete icons created by Freepik - Flaticon'],
        ["Kekaguman", "Admiration", "https://cdn-icons-png.flaticon.com/512/6002/6002288.png", 'Admiration icons created by Flat Icons - Flaticon'],
        ["Kasih sayang", "Affection", "https://cdn-icons-png.flaticon.com/512/4143/4143197.png", 'Heart icons created by Freepik - Flaticon'],
        ["Kekesalan", "Aggravation", "https://cdn-icons-png.flaticon.com/512/9930/9930262.png", 'Crazy icons created by Leremy - Flaticon'],
        ["Kemarahan", "Anger", "https://cdn-icons-png.flaticon.com/512/260/260171.png", 'Emoji icons created by Freepik - Flaticon'],
        ["Kesedihan mendalam", "Anguish", "https://cdn-icons-png.flaticon.com/512/16499/16499849.png", 'Frame of mind icons created by Three musketeers - Flaticon'],
        ["Kecemasan", "Anxiety", 'https://cdn-icons-png.flaticon.com/512/7145/7145123.png','Stress icons created by Freepik - Flaticon'],
        ["Ketertarikan", 'Attraction', 'https://cdn-icons-png.flaticon.com/512/12984/12984106.png', 'Attraction icons created by Freepik - Flaticon'],
        ['Kebosanan','Boredom', 'https://cdn-icons-png.flaticon.com/512/14937/14937634.png', 'Boredom icons created by RomStu - Flaticon'],
        ['Kehati-hatian', 'Caution','https://cdn-icons-png.flaticon.com/512/3061/3061375.png', 'Caution icons created by Freepik - Flaticon']
      ]
    ),
    Materi(
      image: "https://img.freepik.com/free-psd/3d-icon-weather-conditions-with-rain-sun_23-2150108737.jpg",
      judulMateri: "Weather",
      vocab: [
        ['Cerah', 'Sunny', 'https://cdn-icons-png.flaticon.com/512/366/366999.png', 'Agriculture icons created by Freepik - Flaticon'],
        ['Berawan', 'Cloudy', 'https://cdn-icons-png.flaticon.com/512/7774/7774324.png', 'Foggy icons created by Freepik - Flaticon'],
        ['Hujan', 'Rainy', 'https://cdn-icons-png.flaticon.com/512/1146/1146797.png', 'Rain icons created by Freepik - Flaticon'],
        ['Prakiraan', 'Forecast', 'https://cdn-icons-png.flaticon.com/512/2272/2272221.png', 'Weather icons created by Freepik - Flaticon'],
        ['Suhu', 'Temperature', 'https://cdn-icons-png.flaticon.com/512/2100/2100100.png', 'Temperature icons created by Freepik - Flaticon'],
        ['Kelembaban', 'Humidity', 'https://cdn-icons-png.flaticon.com/512/4148/4148460.png', 'Humidity icons created by Freepik - Flaticon'],
        ['Gempa', 'Earthquake', 'https://cdn-icons-png.flaticon.com/512/3242/3242693.png', 'Earthquake icons created by Konkapp - Flaticon'],
        ['Badai', 'Thunderstorm', 'https://cdn-icons-png.flaticon.com/512/9755/9755312.png', 'Thunderstorm icons created by Freepik - Flaticon'],
        ['Tropis', 'Tropical', 'https://cdn-icons-png.flaticon.com/512/4215/4215414.png', 'Tropical icons created by Flat Icons - Flaticon'],
        ['Kutub', 'Polar', 'https://cdn-icons-png.flaticon.com/512/1886/1886461.png', 'Polar bear icons created by max.icons - Flaticon']
    ]

    ),
    Materi(judulMateri: 'Animals', image: 'https://img.lovepik.com/photo/40242/6752.jpg_wh860.jpg',
    vocab: [
      ['Mamalia', 'Mammals', 'https://img.freepik.com/free-vector/group-wild-animal_1308-44821.jpg', 'Image by Freepik'],
      ['Burung', 'Birds', 'https://cdn-icons-png.flaticon.com/512/3069/3069186.png', 'Bird icons created by Freepik - Flaticon'],
      ['Reptil', 'Reptiles', 'https://cdn-icons-png.flaticon.com/512/3196/3196017.png', 'Animals icons created by Freepik - Flaticon'],
      ['Amfibi', 'Amphibians', 'https://cdn-icons-png.flaticon.com/512/8099/8099067.png', 'Frog icons created by Freepik - Flaticon'],
      ['Ikan', 'Fish', 'https://cdn-icons-png.flaticon.com/512/875/875011.png', 'Ocean icons created by Freepik - Flaticon'],
      ['Serangga', 'Insects', 'https://cdn-icons-png.flaticon.com/512/1497/1497605.png', 'Bug icons created by Freepik - Flaticon'],
      ['Melata', 'Slither', 'https://cdn-icons-png.flaticon.com/512/1447/1447876.png', 'Snake icons created by Freepik - Flaticon'],
      ['Berhibernasi', 'Hibernate', 'https://cdn-icons-png.flaticon.com/512/661/661333.png', 'Winter icons created by Freepik - Flaticon'],
      ['Bermigrasi', 'Migrate', 'https://cdn-icons-png.flaticon.com/512/2482/2482783.png', 'Migration icons created by Freepik - Flaticon'],
      ['Menggonggong', 'Bark', 'https://cdn-icons-png.flaticon.com/512/5869/5869167.png', 'Bark icons created by Freepik - Flaticon']
      ]
    ),
    Materi(judulMateri: 'Business', image: 'https://img.freepik.com/free-vector/people-analyzing-growth-charts_23-2148866843.jpg?w=900&t=st=1719129951~exp=1719130551~hmac=d24ff34ce5d4ae867c879579c40117ee5286b9e0ca98ffc7ca1e51a7c0de7b80', vocab:
    [
      ['Surat', 'Letter', 'https://cdn-icons-png.flaticon.com/512/2593/2593648.png', 'Writing icon created by Freepik - Flaticon'],
      ['Laporan', 'Report', 'https://cdn-icons-png.flaticon.com/512/2912/2912794.png', 'Report icon created by Freepik - Flaticon'],
      ['Pemberitahuan', 'Notice', 'https://cdn-icons-png.flaticon.com/512/10098/10098221.png', 'Notifications icon created by Freepik - Flaticon'],
      ['Faktur', 'Invoice', 'https://cdn-icons-png.flaticon.com/512/2474/2474460.png', 'Invoice icon created by Freepik - Flaticon'],
      ['Notulen', 'Minutes', 'https://cdn-icons-png.flaticon.com/512/10236/10236227.png', 'Scheme icon created by Freepik - Flaticon'],
      ['Tanda Tangan', 'Signature', 'https://cdn-icons-png.flaticon.com/512/1358/1358656.png', 'Contract icon created by Freepik - Flaticon'],
      ['Lampiran', 'Attachment', 'https://cdn-icons-png.flaticon.com/512/1979/1979226.png', 'Attached icon created by Freepik - Flaticon'],
      ['Tindak Lanjut', 'Follow-Up', 'https://img.freepik.com/free-vector/choice-worker-concept_23-2148626333.jpg', 'Choice worker concept image created by Freepik'],
      ['Nota Kesepahaman', 'MOU (Memorandum of Understanding)', 'https://cdn-icons-png.flaticon.com/512/13997/13997265.png', 'File icon created by Freepik - Flaticon'],
      ['Secepat Mungkin', 'ASAP (As Soon As Possible)', 'https://cdn-icons-png.flaticon.com/512/3770/3770847.png', 'ASAP icon created by Freepik - Flaticon']
    ]
    ),
    Materi(judulMateri: 'Contact', image: 'https://img.freepik.com/free-vector/business-man-shaking-hands-signed-contract_3446-646.jpg?w=740&t=st=1719130876~exp=1719131476~hmac=7172f9620f936fef1def0e115a74a9f95cdac6db9dc5ecb4cea8bfc54b83c408',
    vocab: 
    [
      ['Penawaran', 'Offer', 'https://cdn-icons-png.flaticon.com/512/2303/2303913.png', 'Email icon created by Freepik - Flaticon'],
      ['Penerimaan', 'Acceptance', 'https://cdn-icons-png.flaticon.com/512/8898/8898412.png', 'Agreement icon created by Freepik - Flaticon'],
      ['Pertimbangan', 'Consideration', 'https://cdn-icons-png.flaticon.com/512/10012/10012471.png', 'Moral icon created by Freepik - Flaticon'],
      ['Legalitas', 'Legality', 'https://cdn-icons-png.flaticon.com/512/4252/4252360.png', 'Compliant icon created by Freepik - Flaticon'],
      ['Perjanjian', 'Agreement', 'https://cdn-icons-png.flaticon.com/512/2838/2838110.png', 'Agreement icon created by Freepik - Flaticon'],
      ['Pelanggaran', 'Breach', 'https://cdn-icons-png.flaticon.com/512/11503/11503140.png', 'Contract icon created by Freepik - Flaticon'],
      ['Ganti Rugi', 'Damages', 'https://cdn-icons-png.flaticon.com/512/12002/12002015.png', 'Damages icon created by Freepik - Flaticon'],
      ['Batal', 'Void', 'https://cdn-icons-png.flaticon.com/512/2570/2570147.png', 'Cross icon created by Freepik - Flaticon'],
      ['Dapat Dibatalkan', 'Voidable', 'https://cdn-icons-png.flaticon.com/512/4628/4628947.png', 'Rejected icon created by Freepik - Flaticon'],
      ['Sah', 'Valid', 'https://cdn-icons-png.flaticon.com/512/2519/2519393.png', 'Accuracy icon created by Freepik - Flaticon'],
      ['Pihak-Pihak', 'Parties', 'https://cdn-icons-png.flaticon.com/512/648/648287.png', 'Network icon created by Freepik - Flaticon'],
      ['Kerahasiaan', 'Confidentiality', 'https://cdn-icons-png.flaticon.com/512/2716/2716654.png', 'Secret file icon created by Freepik - Flaticon'],
      ['Batas Waktu Hukum', 'Statute of Limitations', 'https://cdn-icons-png.flaticon.com/512/10227/10227196.png', 'Denied icon created by Freepik - Flaticon'],
      ['Perjanjian Kerahasiaan', 'Non-Disclosure Agreement (NDA)', 'https://cdn-icons-png.flaticon.com/512/10316/10316630.png', 'Trade icon created by Freepik - Flaticon'],
      ['Kewajiban Bersama', 'Mutuality of Obligation', 'https://cdn-icons-png.flaticon.com/512/9882/9882461.png', 'Obligation icon created by Freepik - Flaticon']
    ]),
    Materi(judulMateri: 'Foods', image: 'https://i.pinimg.com/564x/8d/f5/e7/8df5e7263eb6f96e9d426da98b3b8d80.jpg',
    vocab: 
    [
      ['Buah', 'Fruit', 'https://cdn-icons-png.flaticon.com/512/3194/3194591.png', 'Fruit icons created by Freepik - Flaticon'],
      ['Sayuran', 'Vegetable', 'https://cdn-icons-png.flaticon.com/512/5346/5346400.png', 'Vegetables icon created by Freepik - Flaticon'],
      ['Goreng', 'Fry', 'https://cdn-icons-png.flaticon.com/512/1027/1027128.png', 'Cooking icon created by Freepik - Flaticon'],
      ['Panggang', 'Grill', 'https://cdn-icons-png.flaticon.com/512/8043/8043424.png', 'Roast icon created by Freepik - Flaticon'],
      ['Sendok', 'Spoon', 'https://cdn-icons-png.flaticon.com/512/2447/2447668.png', 'Spoon icon created by Freepik - Flaticon'],
      ['Garpu', 'Fork', 'https://cdn-icons-png.flaticon.com/512/2872/2872537.png', 'Fork icon created by Freepik - Flaticon'],
      ['Mentega', 'Butter', 'https://cdn-icons-png.flaticon.com/512/4729/4729898.png', 'Butter icon created by Freepik - Flaticon'],
      ['Telur', 'Eggs', 'https://cdn-icons-png.flaticon.com/512/2713/2713474.png', 'Eggs icon created by Freepik - Flaticon'],
      ['Kari', 'Curry', 'https://cdn-icons-png.flaticon.com/512/3894/3894669.png', 'Curry icon created by Freepik - Flaticon'],
      ['Pecinta makanan', 'Foodie (informal)', 'https://cdn-icons-png.flaticon.com/512/1886/1886807.png', 'Woman icon created by Freepik - Flaticon']
    ]
),
    // Materi(judulMateri: judulMateri, image: image)
  ];

//QUIZ DUTULIS DI JUDUL MATERI SEBAGAI Quiz
  static List<Materi> tensesMaterials = [
    Materi(judulMateri: 'Apa itu "tenses"?',
    subJudul: [
      Isi(content: "https://raw.githubusercontent.com/ScaraMocchie/images/main/what-image.jpg", type: "image"),
      Isi(content: "\n      Dalam bahasa Inggris, kata 'tense' (bentuk jamak 'tenses') digunakan untuk menunjukkan karakteristik kata kerja dalam sebuah kalimat. Tense pada suatu kata kerja digunakan untuk menggambarkan waktu tertentu di mana suatu peristiwa terjadi.\n\n     Tense adalah bentuk kata kerja yang mengindikasikan waktu kapan suatu tindakan, peristiwa atau keadaan itu terjadi, apakah di masa lampau, sekarang atau yang akan datang. Tenses menjadi aspek penting dalam tata bahasa Inggris untuk menyampaikan makna dan konteks waktu dengan tepat dalam kalimat.", type: "paragraf"),
      // Isi(content: "ini li\ninijuga li", type: "li")      
    ],
    image: "no",
    ),
    Materi(judulMateri: 'Perbedaan ’Tenses’ dalam Bahasa Inggris', image: 'no',
    subJudul: [
      Isi(content: 'https://cdn.pixabay.com/photo/2018/03/13/11/26/clock-3222267_1280.jpg', type: 'image'),
      Isi(content: '\n\t\t\t\t\tDalam bahasa inggris, terdapat 3 Tenses utama, dimana masing-masing tenses tersebut terklasifikasi ke dalam 4 bentuk. Dengan demikian, terdapat 12 tenses yang terbentuk dalam bahasa inggris.', type: 'paragraf'),
      Isi(content: '\n\t\t\t\t\t3 tenses utama :', type: 'title'),
      Isi(content: "Present Tense\nPast Tense\nFuture Tense", type: 'li'),
      Isi(content: "\n\t\t\t\t\t4 bentuk tenses :", type: 'title'),
      Isi(content: "Simple Tense Form\nContinuous Tense Form\nPerfect Tense Form\nPerfect Continuous Tense Form", type: 'li'),
      Isi(content: '\n\t\t\t\t\t12 tenses yang terbentuk', type: 'title'),
      Isi(content: 'Simple Present Tense\nSimple Past Tense\nSimple Future Tense\nPresent Continuous Tense\nPast Continuous Tense\nFuture Continuous Tense\nPresent Perfect Tense\nPast Perfect Tense\nFuture Perfect Tense\nPresent Perfect Continuous Tense\nPast Perfect Continuous Tense\nFuture Perfect Continuous Tense', type: 'li')
      ]),  
    Materi(judulMateri: "Jenis-jenis ’Tenses’", image: 'no',
    subJudul:[
    Isi(content: 'https://cdn.pixabay.com/photo/2023/01/15/16/20/library-7720589_1280.jpg', type: 'image'),
    
    Isi(content: '\n\t\t\t\t\t1. Simple Present Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan fakta, kebiasaan, atau tindakan yang sedang berlangsung.\nContoh: I study English. (Saya belajar bahasa Inggris.)', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t2. Present Continuous Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang sedang berlangsung saat ini.\nContoh: She is reading a book. (Dia sedang membaca buku.)', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t3. Simple Past Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang telah selesai di masa lampau.\nContoh: I visited my grandparents last weekend. (Saya mengunjungi kakek-nenek saya akhir pekan lalu.)', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t4. Past Continuous Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang sedang berlangsung di masa lampau.\nContoh: They were watching a movie when I arrived. (Mereka sedang menonton film ketika saya tiba.)', type: 'paragraf'),

    Isi(content: '\n\t\t\t\t\t5. Present Perfect Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang telah selesai di masa lampau, tetapi masih memiliki relevansi dengan masa kini.\nContoh: I have finished my homework. (Saya telah menyelesaikan pekerjaan rumah saya.)', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t6. Present Perfect Continuous Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang telah berlangsung selama beberapa waktu dan mungkin masih berlangsung.\nContoh: She has been studying English for two years. (Dia telah belajar bahasa Inggris selama dua tahun.)', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t7. Simple Future Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang akan terjadi di masa depan.\nContoh: I will go to the park tomorrow. (Saya akan pergi ke taman besok.)', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t8. Future Continuous Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang akan sedang berlangsung di masa depan.\nContoh: They will be watching a movie at 8 PM. (Mereka akan sedang menonton film pada pukul 8 malam.)', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t9. Future Perfect Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang akan selesai di masa depan sebelum waktu tertentu.\nContoh: By next week, I will have finished my project. (Minggu depan, saya akan telah menyelesaikan proyek saya.)', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t10. Future Perfect Continuous Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang akan telah berlangsung selama beberapa waktu di masa depan.\nContoh: By the end of the year, she will have been working here for five years. (Pada akhir tahun, dia akan telah bekerja di sini selama lima tahun.)', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t11. Past Perfect Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang telah selesai sebelum waktu tertentu di masa lampau.\nContoh: I had finished my homework before I went to bed. (Saya telah menyelesaikan pekerjaan rumah saya sebelum saya pergi tidur.)', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t12. Past Perfect Continuous Tense', type: 'title'),
    Isi(content: 'Digunakan untuk menyatakan tindakan yang telah berlangsung selama beberapa waktu di masa lampau sebelum waktu tertentu.\nContoh: She had been studying for the exam for three months before she took it. (Dia telah belajar untuk ujian selama tiga bulan sebelum dia mengikutinya.)', type: 'paragraf'),
]

    ),
    Materi(judulMateri: "Quiz", subJudul: [], image: "https://raw.githubusercontent.com/ScaraMocchie/images/main/Ellipse%2011.png")
    // Materi(judulMateri: "Quiz 1", subJudul: [], image: "no")
  ];
  static List<Materi> modalsMaterials = [
    Materi(judulMateri: 'Apa itu "modals"?', subJudul: [
    Isi(content: 'https://cdn.pixabay.com/photo/2020/11/08/11/29/woman-5723452_1280.jpg', type: 'image'),
    Isi(content: '\n\t\t\t\t\tKata kerja dapat diberi bermacam-macam gagasan oleh kata-kata yang disebut Modals. Gagasan tersebut dapat berupa kemampuan, izin, dan kemungkinan. Modals tidak dipengaruhi oleh subjek, tetapi dipengaruhi oleh bentuk tenses.\nMenurut arti dan penggunaannya, modal dapat dijelaskan sebagai berikut:', type: 'paragraf'),
    
    Isi(content: '\n\t\t\t\t\t1. Modals untuk menunjukkan kemampuan', type: 'title'),
    Isi(content: 'Can : Present tense\nCould : Past tense\nCan not / Can’t, Could not/ Couldn’t : Negatif', type: 'li'),
    Isi(content: 'Contoh:', type: 'paragraf'),
    Isi(content: 'He can sing a song. (Dia bisa menyanyikan sebuah lagu)\nShe could dance when she was sixteen. (Dia bisa menari ketika dia berusia 16 tahun)\nHe can\'t read. (Dia tidak bisa membaca)', type: 'li'),

    Isi(content: '\n\t\t\t\t\t2. Modals untuk Meminta dan Memberi Izin', type: 'title'),
    Isi(content: 'May: Present tense\nMight: Past tense\nMay not, Might not: Negatif', type: 'li'),
    Isi(content: 'Contoh:', type: 'paragraf'),
    Isi(content: 'May I borrow your pen? (Bolehkah saya meminjam pulpen Anda?)\nYou might have asked me first. (Anda mungkin telah menanyakan saya terlebih dahulu)\nYou may not come in. (Anda tidak boleh masuk)', type: 'li'),

    Isi(content: '\n\t\t\t\t\t3. Modals untuk Menunjukkan Keharusan Berbuat Sesuatu', type: 'title'),
    Isi(content: 'Must: Present tense\nHad to: Past tense\nMust not, Mustn\'t: Negatif', type: 'li'),
    Isi(content: 'Contoh:', type: 'paragraf'),
    Isi(content: 'You must obey the rules. (Anda harus mematuhi aturan)\nI had to work late last night. (Saya harus bekerja lembur tadi malam)\nYou mustn\'t smoke here. (Anda tidak boleh merokok di sini)', type: 'li'),

    Isi(content: '\n\t\t\t\t\t4. Modals untuk Menunjukkan Kemungkinan', type: 'title'),
    Isi(content: 'May, Might, Could: Present/Future tense\nMay not, Might not, Could not: Negatif', type: 'li'),
    Isi(content: 'Contoh:', type: 'paragraf'),
    Isi(content: 'It may rain today. (Mungkin akan hujan hari ini)\nShe might be late. (Dia mungkin terlambat)\nIt could not be true. (Itu bisa jadi tidak benar)', type: 'li'),

    Isi(content: '\n\t\t\t\t\t5. Modals untuk Menyatakan Kesediaan di Masa Depan', type: 'title'),
    Isi(content: 'Will: Future tense\nWould: Past tense / lebih sopan\nWill not, Would not: Negatif', type: 'li'),
    Isi(content: 'Contoh:', type: 'paragraf'),
    Isi(content: 'I will help you with your homework. (Saya akan membantu Anda dengan pekerjaan rumah Anda)\nShe said she would buy a new car. (Dia bilang dia akan membeli mobil baru)\nThey would not accept our offer. (Mereka tidak akan menerima tawaran kami)', type: 'li'),

    Isi(content: '\n\t\t\t\t\t6. Modals dalam Bentuk Perfect', type: 'title'),
    Isi(content: 'Have to, Has to, Had to: Keharusan\nShould have, Ought to have: Menyatakan sesuatu yang seharusnya dilakukan', type: 'li'),
    Isi(content: 'Contoh:', type: 'paragraf'),
    Isi(content: 'I have to finish this report by tomorrow. (Saya harus menyelesaikan laporan ini besok)\nHe had to leave early. (Dia harus pergi lebih awal)\nYou should have told me the truth. (Anda seharusnya memberitahu saya yang sebenarnya)', type: 'li')
], image: "no"),
    Materi(judulMateri: "Quiz", subJudul: [
      Isi(content: "cuma contoh", type: "paragraf")
    ], image: "https://raw.githubusercontent.com/ScaraMocchie/images/main/Ellipse%2011.png")
  ];
  static List<Materi> adjadvMaterials = [
    Materi(judulMateri: 'Apa itu "Adverbs"?', subJudul: [
      Isi(content: '\n\t\t\t\t\tKerap kali penggunaan Adjective maupun Adverbs membingungkan dalam Bahasa Inggris. Hal tersebut dapat terjadi karena keduanya merupakan kata yang mendeskripsikan atau menjelaskan kata lainnya.', type: 'paragraf'),

      Isi(content: '\n\t\t\t\t\t4.1 Adjective (Kata Sifat)', type: 'title'),
      Isi(content: 'Adjective adalah kata yang mendeskripsikan atau menerangkan noun (kata benda) atau pronoun (kata ganti).', type: 'li'),
      Isi(content: 'Adjective dapat mengekspresikan berbagai hal seperti ukuran, usia, warna, asal, dan lain-lain.', type: 'li'),
      Isi(content: 'Adjective dapat diletakkan sebelum noun (contoh: big house) atau setelah kata penghubung seperti "to be" (contoh: The house is big).', type: 'li'),
      Isi(content: 'Adjective juga dapat digunakan sebagai subjek komplemen atau objek komplemen (contoh: He looks happy. I find him intelligent).', type: 'li'),
      Isi(content: 'Beberapa adjective berakhiran -ly seperti friendly, elderly, curly, namun tidak semua kata yang berakhiran -ly adalah adjective.', type: 'li'),

      Isi(content: '\n\t\t\t\t\t4.2 Adverb (Kata Keterangan)', type: 'title'),
      Isi(content: 'Adverb berfungsi untuk mendeskripsikan atau menerangkan verb (kata kerja), adjective, atau adverb lain.', type: 'li'),
      Isi(content: 'Adverb dapat mengekspresikan cara (how), waktu (when), tempat (where), dan sebab (why) dari suatu tindakan.', type: 'li'),
      Isi(content: 'Kebanyakan adverb dibentuk dengan menambahkan akhiran "-ly" pada adjective (contoh: quick → quickly).', type: 'li'),
      Isi(content: 'Adverb juga dapat menerangkan adjective lain, biasanya menunjukkan tingkat intensitas (contoh: The very large man).', type: 'li'),
      Isi(content: 'Adverb dapat diletakkan di awal kalimat untuk memberi penekanan (contoh: Surprisingly, she won).', type: 'li'),

      Isi(content: '\n\t\t\t\t\t4.3 Perbedaan Utama', type: 'title'),
      Isi(content: 'Adjective mendeskripsikan noun/pronoun, adverb mendeskripsikan verb.', type: 'li'),
      Isi(content: 'Adjective dapat digunakan sebelum noun, adverb tidak bisa.', type: 'li'),
      Isi(content: 'Kebanyakan adverb berakhiran -ly, meskipun tidak semuanya dan ada pengecualian.', type: 'li'),

      Isi(content: '\n\t\t\t\t\t4.4 Cara Mengubah Adjective ke Adverb', type: 'title'),
      Isi(content: 'Menambahkan -ly di akhir (mis. loud → loudly)', type: 'li'),
      Isi(content: 'Jika berakhiran -y, ganti -y dengan -ily (mis. easy → easily)', type: 'li'),
      Isi(content: 'Jika berakhiran -le/-ble, ganti -e dengan -y (mis. terrible → terribly)', type: 'li'),
      Isi(content: 'Jika berakhiran -ic, tambahkan -ally (mis. tragic → tragically)', type: 'li')
    ]

,
    image: "no"),

    Materi(judulMateri: "Quiz", subJudul: [], image: "https://raw.githubusercontent.com/ScaraMocchie/images/main/Ellipse%2011.png")
  ];
}
