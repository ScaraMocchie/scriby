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
  static List<Materi> vocabMaterials = [
    Materi(
      image: "no",
      judulMateri: "Emotions",
      vocab: [
        ["Penerimaan", "Acceptance", "https://img.freepik.com/free-vector/high-self-esteem-illustration-with-woman-leaves_23-2148723709.jpg"]
      ]
    ),
    Materi(
      image: "no",
      judulMateri: "General Weather",
      vocab: [
        ["Iklim", "Climate", "https://static.vecteezy.com/system/resources/previews/003/447/447/original/climate-change-destroying-earth-illustration-vector.jpg"],
        ["Cerah", "Sunny", "https://www.shutterstock.com/image-vector/sunny-cartoon-vector-weather-icon-260nw-1459600367.jpg"]
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
    image: "no",),
    Materi(judulMateri: "Quiz", subJudul: [], image: "https://raw.githubusercontent.com/ScaraMocchie/images/main/Ellipse%2011.png")
    // Materi(judulMateri: "Quiz 1", subJudul: [], image: "no")
  ];
  static List<Materi> modalsMaterials = [
    Materi(judulMateri: 'Apa itu "modals"?', subJudul: [], image: "no"),
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
