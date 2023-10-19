import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homePage()
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width*0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hallo',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 45,fontWeight: FontWeight.bold,color: Colors.black)),
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text: 'Saya ',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 65,fontWeight: FontWeight.bold,color: Colors.black)),
                      TextSpan(text: 'Adi Yogta',style: GoogleFonts.rubik(fontStyle: FontStyle.normal,fontSize: 65,fontWeight: FontWeight.w500,color: const Color.fromARGB(251, 251, 182, 57))),
                    ],
                  ),),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: const Color.fromARGB(251, 251, 182, 57),
                    child: Text('Desainer Grafis / Programmer',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))),
                  Text('"Selamat datang di portofolio Adi Yogta, seorang Desainer Grafis dan Flutter Developer yang berdedikasi. Saya menggabungkan kreativitas dan keahlian teknis untuk menciptakan pengalaman visual yang memukau dan aplikasi mobile yang inovatif. Temukan lebih lanjut tentang saya di halaman Tentang Saya."',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify,),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(251, 251, 182, 57),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(55)
                      ),
                    child: TextButton(
                      onPressed: (){
                  
                      }, 
                      child: Text('Tentang Saya',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width*0.5,
              color: const Color.fromARGB(214, 214, 214, 214),
              decoration: BoxDecoration(
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
