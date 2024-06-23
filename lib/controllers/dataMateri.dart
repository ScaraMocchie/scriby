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
    Materi(judulMateri: 'Hobbies', image: 'https://img.freepik.com/free-vector/hand-drawn-flat-people-hobbies_23-2149053953.jpg?size=626&ext=jpg',
    vocab: [
      ['Waktu luang', 'Leisure ', 'https://cdn-icons-png.flaticon.com/512/2084/2084211.png', 'Bench icons created by Eucalyp - Flaticon'],
      ['Penggemar', 'Enthusiast ', 'https://cdn-icons-png.flaticon.com/512/5862/5862240.png', 'Passion icons created by Eucalyp - Flaticon'],
      ['Rekreasi', 'Recreation ', 'https://cdn-icons-png.flaticon.com/512/2797/2797887.png', 'Camper icons created by iconixar - Flaticon'],
      ['Merajut', 'Knitting ', 'https://cdn-icons-png.flaticon.com/512/2870/2870706.png', 'Crochet icons created by Konkapp - Flaticon'],
      ['Menulis lagu', 'Songwriting ', 'https://cdn-icons-png.flaticon.com/512/1753/1753439.png', 'Writer icons created by Flat Icons - Flaticon'],
      ['Puisi', 'Poetry ', 'https://cdn-icons-png.flaticon.com/512/9087/9087118.png', 'Poetry icons created by Freepik - Flaticon'],
      ['Berkemah', 'Camping ', 'https://cdn-icons-png.flaticon.com/512/1020/1020535.png', 'Camping icons created by Freepik - Flaticon'],
      ['Fotografi', 'Photography ', 'https://cdn-icons-png.flaticon.com/512/461/461823.png', 'Photography icons created by Freepik - Flaticon'],
      ['Menyelam', 'Diving ', 'https://cdn-icons-png.flaticon.com/512/6750/6750499.png', 'Diving icons created by Flat Icons - Flaticon'],
      ['Observasi satwa liar', 'Wildlife observation ', 'https://cdn-icons-png.flaticon.com/512/13505/13505689.png', 'Bird watching icons created by bsd - Flaticon']
    ]
),
    Materi(judulMateri: 'Interview', image: 'https://static.vecteezy.com/system/resources/thumbnails/003/032/078/small/job-interview-conversation-hr-manager-and-job-candidate-vector.jpg',
    vocab: [
      ['Pelamar', 'Applicant', 'https://cdn-icons-png.flaticon.com/512/9436/9436966.png', 'Developer icons created by Flaticon'],
      ['Pewawancara', 'Interviewer', 'https://cdn-icons-png.flaticon.com/512/2179/2179306.png', 'Interview icons created by Flaticon'],
      ['Umpan Balik', 'Feedback', 'https://cdn-icons-png.flaticon.com/512/2839/2839172.png', 'Feedback icons created by Flaticon'],
      ['Pengalaman', 'Experience', 'https://cdn-icons-png.flaticon.com/512/10936/10936451.png', 'Customer experience icons created by Flaticon'],
      ['Sertifikasi', 'Certification', 'https://cdn-icons-png.flaticon.com/512/3000/3000777.png', 'Certificate icons created by Flaticon'],
      ['Keterampilan', 'Skillset', 'https://cdn-icons-png.flaticon.com/512/12105/12105237.png', 'Skillset icons created by Flaticon'],
      ['Budaya', 'Culture', 'https://cdn-icons-png.flaticon.com/512/3490/3490884.png', 'Corporate culture icons created by Flaticon'],
      ['Pemangku Kepentingan', 'Stakeholder', 'https://cdn-icons-png.flaticon.com/512/1875/1875700.png', 'Stakeholder icons created by Flaticon'],
      ['Kepercayaan Diri', 'Confidence', 'https://cdn-icons-png.flaticon.com/512/8712/8712063.png', 'Confidence icons created by Flaticon'],
      ['Manajemen Waktu', 'Time Management', 'https://cdn-icons-png.flaticon.com/512/3842/3842536.png', 'Time management icons created by Flaticon']
    ]
    ),
    Materi(judulMateri: 'Job Occupation', image: 'https://png.pngtree.com/png-clipart/20190520/original/pngtree-cartoon-cartoon-occupation-business-business-career-png-image_3920174.jpg',
    vocab: [
      ['Dokter', 'Doctor', 'https://cdn-icons-png.flaticon.com/512/3952/3952988.png', 'Doctor icons created by Flaticon'],
      ['Insinyur', 'Engineer', 'https://cdn-icons-png.flaticon.com/512/9321/9321656.png', 'Engineer icons created by Flaticon'],
      ['Pilot', 'Pilot', 'https://cdn-icons-png.flaticon.com/512/1995/1995504.png', 'Pilot icons created by Flaticon'],
      ['Wawancara', 'Interview', 'https://cdn-icons-png.flaticon.com/512/3135/3135714.png', 'Job interview icons created by Flaticon'],
      ['Tawaran kerja', 'Job offer', 'https://cdn-icons-png.flaticon.com/512/2303/2303913.png', 'Email icons created by Flaticon'],
      ['Ekspektasi gaji', 'Salary expectations', 'https://cdn-icons-png.flaticon.com/512/3790/3790140.png', 'Salary icons created by Flaticon'],
      ['Tenggat', 'Deadline', 'https://cdn-icons-png.flaticon.com/512/1599/1599809.png', 'Deadline icons created by Flaticon'],
      ['Kerja tim', 'Teamwork', 'https://cdn-icons-png.flaticon.com/512/4859/4859784.png', 'Teamwork icons created by Flaticon'],
      ['Pekerja penuh waktu', 'Full-time', 'https://cdn-icons-png.flaticon.com/512/6171/6171650.png', 'Full-time job icons created by Flaticon'],
      ['Pensiunan', 'Retired', 'https://cdn-icons-png.flaticon.com/512/4072/4072872.png', 'Retirement icons created by Flaticon']
    ]
    ),
    Materi(judulMateri: 'Negotiation', image: 'https://img.freepik.com/free-vector/partnership-concept-illustration_114360-5954.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1718928000&semt=sph',
    vocab: [
      ['Negosiator', 'Negotiator', 'https://cdn-icons-png.flaticon.com/512/1376/1376407.png', 'Meeting icons created by Flaticon'],
      ['Pihak', 'Party', 'https://cdn-icons-png.flaticon.com/512/3281/3281378.png', 'Management icons created by Flaticon'],
      ['Kepentingan', 'Interest', 'https://cdn-icons-png.flaticon.com/512/1475/1475165.png', 'Politician icons created by Flaticon'],
      ['Taktik negosiator yang dianggap tidak biasa misalnya dengan melalui tekanan', 'Hardball', 'https://cdn-icons-png.flaticon.com/512/1239/1239726.png', 'Meeting icons created by Flaticon'],
      ['penawaran awal yang jauh di atas atau di bawah nilai sebenarnya pada lawan negosiasi', 'Lowball – Highball', 'https://cdn-icons-png.flaticon.com/512/9167/9167077.png', 'Negotiation icons created by Flaticon'],
      ['Tegas', 'Assertive', 'https://cdn-icons-png.flaticon.com/512/16448/16448096.png', 'Laptop icons created by Flaticon'],
      ['Pengungkit', 'Leverage', 'https://cdn-icons-png.flaticon.com/512/9286/9286068.png', 'Leverage icons created by Flaticon'],
      ['Tawar-menawar', 'Bargaining', 'https://cdn-icons-png.flaticon.com/512/5347/5347789.png', 'Bargaining icons created by Flaticon'],
      ['Kebuntuan', 'Deadlock', 'https://cdn-icons-png.flaticon.com/512/2854/2854004.png', 'Shaking hands icons created by Flaticon'],
      ['Kesepakatan', 'Agreement', 'https://cdn-icons-png.flaticon.com/512/2838/2838110.png', 'Agreement icons created by Flaticon']
    ]
    ),
    Materi(judulMateri: 'Family', image: 'https://static.vecteezy.com/system/resources/thumbnails/002/380/191/small_2x/happy-family-character-concept-free-vector.jpg',
    vocab: [
      ['Ayah', 'Father', 'https://cdn-icons-png.flaticon.com/512/8115/8115376.png', 'Father icons created by Flaticon'],
      ['Ibu', 'Mother', 'https://cdn-icons-png.flaticon.com/512/2871/2871918.png', 'Mother icons created by Flaticon'],
      ['Saudara laki-laki', 'Brother', 'https://cdn-icons-png.flaticon.com/512/7223/7223689.png', 'Brother icons created by Flaticon'],
      ['Saudara perempuan', 'Sister', 'https://cdn-icons-png.flaticon.com/512/7223/7223758.png', 'Sister icons created by Flaticon'],
      ['Anak laki-laki', 'Son', 'https://cdn-icons-png.flaticon.com/512/2829/2829758.png', 'Son icons created by Flaticon'],
      ['Anak perempuan', 'Daughter', 'https://cdn-icons-png.flaticon.com/512/2880/2880501.png', 'Daughter icons created by Flaticon'],
      ['Kakek', 'Grandfather', 'https://cdn-icons-png.flaticon.com/512/1320/1320912.png', 'Grandfather icons created by Flaticon'],
      ['Nenek', 'Grandmother', 'https://cdn-icons-png.flaticon.com/512/3554/3554891.png', 'Old woman icons created by Flaticon'],
      ['Paman', 'Uncle', 'https://cdn-icons-png.flaticon.com/512/4598/4598871.png', 'Uncle icons created by Flaticon'],
      ['Bibi', 'Aunt', 'https://cdn-icons-png.flaticon.com/512/7223/7223728.png', 'Aunt icons created by Flaticon'],
      ['Sepupu', 'Cousin', 'https://cdn-icons-png.flaticon.com/512/7223/7223764.png', 'Cousin icons created by Flaticon']
    ]
    ),
    Materi(judulMateri: 'Places', image: 'https://cdni.iconscout.com/illustration/free/thumb/free-location-4085815-3385484.png',
    vocab: [
      ['Rumah sakit', 'Hospital', 'https://cdn-icons-png.flaticon.com/512/3063/3063176.png', 'Hospital icons created by Flaticon'],
      ['Sekolah', 'School', 'https://cdn-icons-png.flaticon.com/512/2602/2602414.png', 'School icons created by Flaticon'],
      ['Kebun binatang', 'Zoo', 'https://cdn-icons-png.flaticon.com/512/5190/5190782.png', 'Zoo icons created by Flaticon'],
      ['Taman hiburan', 'Amusement park', 'https://cdn-icons-png.flaticon.com/512/7385/7385434.png', 'Fair icons created by Flaticon'],
      ['Apotek', 'Pharmacy', 'https://cdn-icons-png.flaticon.com/512/4320/4320337.png', 'Drugstore icons created by Flaticon'],
      ['Toko roti', 'Bakery', 'https://cdn-icons-png.flaticon.com/512/1772/1772770.png', 'Bakery icons created by Flaticon'],
      ['Kebun raya', 'Botanical garden', 'https://cdn-icons-png.flaticon.com/512/3194/3194570.png', 'Park icons created by Flaticon'],
      ['Cagar alam', 'Nature reserve', 'https://cdn-icons-png.flaticon.com/512/3289/3289407.png', 'Forest icons created by Flaticon'],
      ['Studio seni', 'Art studio', 'https://cdn-icons-png.flaticon.com/512/1375/1375822.png', 'Studio icons created by Flaticon'],
      ['Alun-alun', 'Public square', 'https://cdn-icons-png.flaticon.com/512/15871/15871312.png', 'Market icons created by Flaticon']
    ]
    ),
    Materi(judulMateri: 'Plants', image: 'https://static.vecteezy.com/system/resources/thumbnails/001/952/567/small/tropical-plant-with-light-green-background-free-vector.jpg',
    vocab: [
      ['Mawar', 'Rose', 'https://cdn-icons-png.flaticon.com/512/765/765848.png', 'Rose icons created by Flaticon'],
      ['Lili', 'Lily', 'https://cdn-icons-png.flaticon.com/512/4139/4139438.png', 'Lily icons created by Flaticon'],
      ['Aster', 'Daisy', 'https://cdn-icons-png.flaticon.com/512/2559/2559315.png', 'Flower icons created by Flaticon'],
      ['Bunga Matahari', 'Sunflower', 'https://cdn-icons-png.flaticon.com/512/1424/1424102.png', 'Sunflower icons created by Flaticon'],
      ['Anggrek', 'Orchid', 'https://cdn-icons-png.flaticon.com/512/4842/4842317.png', 'Orchid icons created by Flaticon'],
      ['Selada', 'Lettuce', 'https://cdn-icons-png.flaticon.com/512/8411/8411352.png', 'Lettuce icons created by Flaticon'],
      ['Bayam', 'Spinach', 'https://cdn-icons-png.flaticon.com/512/1652/1652124.png', 'Spinach icons created by Flaticon'],
      ['Brokoli', 'Broccoli', 'https://cdn-icons-png.flaticon.com/512/4056/4056975.png', 'Broccoli icons created by Flaticon'],
      ['Ketumbar', 'Cilantro', 'https://cdn-icons-png.flaticon.com/512/7013/7013845.png', 'Cilantro icons created by Flaticon'],
      ['Peterseli', 'Parsley', 'https://cdn-icons-png.flaticon.com/512/1919/1919495.png', 'Parsley icons created by Flaticon']
    ]
    ),
    Materi(judulMateri: 'Pop Culture', image: 'https://static.vecteezy.com/system/resources/thumbnails/000/273/378/small/Young_Girl_Watching_TV.jpg',
    vocab: [
    ['Menonton maraton', 'Binge-watch', 'https://cdn-icons-png.flaticon.com/512/4221/4221484.png', 'Watching a movie icons created by Flaticon'],
    ['Daftar putar', 'Playlist', 'https://cdn-icons-png.flaticon.com/512/7615/7615049.png', 'Music icons created by Flaticon'],
    ['Penampilan singkat', 'Cameo', 'https://cdn-icons-png.flaticon.com/512/2787/2787950.png', 'Movie icons created by Flaticon'],
    ['Pemberi Pengaruh', 'Influencer', 'https://cdn-icons-png.flaticon.com/512/7327/7327759.png', 'Influencer icons created by Flaticon'],
    ['Tren', 'Trending', 'https://cdn-icons-png.flaticon.com/512/3391/3391039.png', 'Trending topic icons created by Flaticon'],
    ['Tagar', 'Hashtag', 'https://cdn-icons-png.flaticon.com/512/6633/6633296.png', 'Hashtag icons created by Flaticon'],
    ['Siaran Audio', 'Podcast', 'https://cdn-icons-png.flaticon.com/512/3742/3742679.png', 'Podcaster icons created by Flaticon'],
    ['Pesan Langsung', 'DM', 'https://cdn-icons-png.flaticon.com/512/5679/5679715.png', 'DM icons created by Flaticon'],
    ['Swafoto', 'Selfie', 'https://cdn-icons-png.flaticon.com/512/6081/6081880.png', 'Selfie icons created by Flaticon'],
    ['Video Blog', 'Vlog', 'https://cdn-icons-png.flaticon.com/512/3271/3271187.png', 'Vlog icons created by Flaticon']
]
    ),
    Materi(judulMateri: 'Presentation', image: 'https://www.freevector.com/uploads/vector/preview/6986/FreeVector-Presentation.jpg',
    vocab: [
      ['Presentasi Informatif', 'Informative Presentations', 'https://cdn-icons-png.flaticon.com/512/1064/1064587.png', 'Presentation icons created by Flaticon'],
      ['Presentasi Persuasif', 'Persuasive Presentations', 'https://cdn-icons-png.flaticon.com/512/3534/3534083.png', 'Presentation icons created by Flaticon'],
      ['Pengantar', 'Introduction', 'https://cdn-icons-png.flaticon.com/512/6596/6596919.png', 'Training icons created by Flaticon'],
      ['Isi', 'Body', 'https://cdn-icons-png.flaticon.com/512/6171/6171536.png', 'Letter icons created by Flaticon'],
      ['Kesimpulan', 'Conclusion', 'https://cdn-icons-png.flaticon.com/512/6863/6863897.png', 'Conclusion icons created by Flaticon'],
      ['Grafik', 'Graph', 'https://cdn-icons-png.flaticon.com/512/404/404672.png', 'Bar graph icons created by Flaticon'],
      ['Bagan', 'Chart', 'https://cdn-icons-png.flaticon.com/512/423/423847.png', 'Pie chart icons created by Flaticon'],
      ['Nada', 'Tone', 'https://cdn-icons-png.flaticon.com/512/9288/9288862.png', 'Music icons created by Flaticon'],
      ['Artikulasi', 'Articulation', 'https://cdn-icons-png.flaticon.com/512/4710/4710801.png', 'Speaking icons created by Flaticon'],
      ['Antusiasme', 'Enthusiasm', 'https://cdn-icons-png.flaticon.com/512/8509/8509855.png', 'Imagination icons created by Flaticon']
  ]
    ),
    Materi(judulMateri: 'Technology', image: 'https://cdni.iconscout.com/illustration/premium/thumb/wireless-technology-4152285-3457276.png?f=webp',
    vocab: [
      ['Komputer', 'Computer', 'https://cdn-icons-png.flaticon.com/512/2292/2292038.png', 'PC icons created by Flaticon'],
      ['Perangkat Lunak', 'Software', 'https://cdn-icons-png.flaticon.com/512/16486/16486248.png', 'Application icons created by Flaticon'],
      ['Perangkat Keras', 'Hardware', 'https://cdn-icons-png.flaticon.com/512/4292/4292785.png', 'PC icons created by Flaticon'],
      ['Sistem Operasi', 'Operating System', 'https://cdn-icons-png.flaticon.com/512/7655/7655685.png', 'System integration icons created by Flaticon'],
      ['Jejaring Sosial', 'Social Network', 'https://cdn-icons-png.flaticon.com/512/2622/2622191.png', 'Network icons created by Flaticon'],
      ['Tagar (#)', 'Hashtag (#)', 'https://cdn-icons-png.flaticon.com/512/7438/7438771.png', 'Hashtag icons created by Flaticon'],
      ['DM (Pesan Langsung)', 'DM (Direct Message)', 'https://cdn-icons-png.flaticon.com/512/8640/8640318.png', 'Mail icons created by Flaticon'],
      ['Pengikut', 'Followers', 'https://cdn-icons-png.flaticon.com/512/4149/4149882.png', 'Rating icons created by Flaticon'],
      ['Tren', 'Trending', 'https://cdn-icons-png.flaticon.com/512/3391/3391039.png', 'Trending topic icons created by Flaticon'],
      ['Keterlibatan', 'Engagement', 'https://cdn-icons-png.flaticon.com/512/16504/16504350.png', 'Upload icons created by Flaticon']
  ]
    ),
    // Materi(judulMateri: 'Time', image: 'https://img.freepik.com/free-vector/time-management-concept_52683-63895.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719014400&semt=sph',
    // vocab: 
    // ),
    // Materi(judulMateri: judulMateri, image: image),
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
