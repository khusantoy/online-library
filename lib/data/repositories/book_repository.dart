import 'package:online_library/data/models/book_model.dart';

class BookRepository {
  List<BookModel> books = [
    BookModel(
      title: "Suv ostida 80 ming kilometr",
      description:
          "XIX asning ikkinchi yarmida dengiz va okeanlarda to'satdan paydo bo'lgan suv jonivori omma e'tiboriga tushdi. U suzish tezligi va bahaybatligi bilan kitni ham ortda qoldirar edi. Ulkan suv maxluqi haqidagi gazeta sahifalarida tinimsiz yoritib borilayotgan turli taxminlar olimlarning qiziqishini uyg'otdi va maxsus ekspeditsiya uyushtirib, uning iziga tushdilar. Bu suv jonivori bilan yaqindan tanishish faqatgina professor Aronaks, uning xizmatkori Konsel va garpunchi Ned Lendga nasib etdi. Ular hamma ulkan jonivor deb atagan kema bortiga tushib qoldilar hamda kapitan Nemoning suv osti kemasida butun dunyo bo'ylab ham xatarli, ham g'aroyib sarguzashtlarni boshdan kechiradilar. Asar qahramonlari bilan birga bo'lgan qit'alararo suv ostida g'oyibona sayohat, shubhasiz, o'quvchining olam, tabiat, jonivorlar haqidagi tasavvurlarini boyitadi.",
      author: "Jyul Vern",
      image: "assets/images/suv_ostida_80_ming_kilometr.jpg",
      genre: "fantastika",
      price: 18.000,
      rating: 4.4,
      url:
          "https://kitobsevar.uz/kxpv/xrpt_a16d7bzkv8y7b5gnyjrrh0s250iad9bdy8gu977u4up6oyic81ue1d7ucevgcxj2trlsnicg4tc.pdf",
      savePath: '',
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    BookModel(
      title: "Pinokkioning boshidan kechirganlari",
      description:
          "“Pinokkioning boshidan kechirganlari” asarida yog'och bolaning turli sarguzashtlar orqali tarbiyalanib borishi, haqiqiy bolaga aylanishga munosib bo'lish yo'lida yo'l qo'ygan xatolari va ko'rsatgan qahramonliklari tasvirlangan.",
      author: "Karlo Kollodi",
      image: "assets/images/pinokkioning_boshidan_kechirganlari_qissa.jpg",
      genre: "ertak",
      price: 26.000,
      rating: 5.0,
      url:
          "https://kitobsevar.uz/kxpv/xrpt_a16d7bzkv8y7b5gnyjrrh0s250iad9bdy8gu977u4up6oyic81ue1d7ucevgcxj2trlsnicg4tc.pdf",
      savePath: '',
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    BookModel(
      title: "Sichqonlar tortishuvi",
      description: "Kichik yoshdagi bolalar uchun ibratli ertak.",
      author: "Xalq og'zaki ijodi",
      image: "assets/images/sichqonlar_tortishuvi.jpg",
      genre: "ertak",
      price: 20.000,
      rating: 4.9,
      url:
          "https://kitobsevar.uz/kxpv/xrpt_a16d7bzkv8y7b5gnyjrrh0s250iad9bdy8gu977u4up6oyic81ue1d7ucevgcxj2trlsnicg4tc.pdf",
      savePath: '',
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    BookModel(
      title: "Dunyoning ishlari",
      description:
          "XX asr o'zbek adabiyotida o'z o'rni va uslubiga ega bo'lgan adib - O'zbekiston xalq yozuvchisi O'tkir Hoshimov, aytish mumkinki, XXI asr o'quvchisining ham sevimli adibi bo'lib qoladi. Jonli va hayotiy tasvirlar, sof o'zbekona yondashuv va xarakter, qahramonlar o'rtasidagi suhbatlar mutolaasi o'quvchini o'z ta'siriga oladi. Nafaqat millat, balki chin insoniylik tarannumi yozuvchi asarlarida yetakchilik qilishi kitobxon uchun tarbiyaviy va hayotiy saboq bo'ladi. Xoh jiddiy, xoh hajviy bo'lsin O'tkir Hoshimov asarlarida hayot qaynaydi: unda har birimiz o'zimizni, oilamizni, do'st-u yorimizni, hatto hech kimga o'xshamagan onamizni ko'ramiz... Bir inson umrini qamragan roman bo'lsin, qator novellalardan iborat qissa yoki hikoya bo'lsin, janridan qat’i nazar, O'tkir Hoshimov asarlarida dunyoning ishlari mujassam. Mutolaa har qanday o'quvchi uchun katta hayotiy xulosa berishiga ishonamiz.",
      author: "O'tkir Hoshimov",
      image: "assets/images/dunyoning_ishlari.png",
      genre: "qissa",
      price: 30.000,
      rating: 4.9,
      url:
          "https://elib.buxdupi.uz/books/O%E2%80%98tkir%20Hoshimov-Dunyoning%20ishlari.pdf",
      savePath: '',
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    BookModel(
      title: "Muhabbat",
      description:
          "Yozuvchi O'tkir Hoshimov ijodidan yana bir hikoya siz, aziz kitobxonlarga taqdim etilmoqda.",
      author: "O'tkir Hoshimov",
      image: "assets/images/muhabbat.jpg",
      genre: "hikoya",
      price: 28.000,
      rating: 4.8,
      url:
          "https://elib.buxdupi.uz/books/O%E2%80%98tkir%20Hoshimov-Dunyoning%20ishlari.pdf",
      savePath: '',
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    )
  ];
}
