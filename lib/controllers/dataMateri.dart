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
      judulMateri: "General Weather",
      vocab: [
        ["Iklim", "Climate", "https://static.vecteezy.com/system/resources/previews/003/447/447/original/climate-change-destroying-earth-illustration-vector.jpg"],
        ["Cerah", "Sunny", "https://www.shutterstock.com/image-vector/sunny-cartoon-vector-weather-icon-260nw-1459600367.jpg"],
      ]
    ),
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
      Isi(content: "cuma contoh", type: "paragraf")
    ], image: "no"),
    Materi(judulMateri: 'Apa itu "Adjective"?', subJudul: [
      Isi(content: "cuma contoh", type: "paragraf")
    ], image: "no"),
    Materi(judulMateri: "Quiz", subJudul: [], image: "https://raw.githubusercontent.com/ScaraMocchie/images/main/Ellipse%2011.png")
  ];
}
