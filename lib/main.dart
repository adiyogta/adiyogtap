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
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-vector/old-papper_598438-1516.jpg?w=740'),fit: BoxFit.fitHeight,opacity: 0.3)
              ),
              width: MediaQuery.sizeOf(context).width*0.5,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height*0.2,horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    const SizedBox(height: 15,),
                    Text('"Selamat datang di portofolio Adi Yogta, seorang Desainer Grafis dan Flutter Developer yang berdedikasi. Saya menggabungkan kreativitas dan keahlian teknis untuk menciptakan pengalaman visual yang memukau dan aplikasi mobile yang inovatif. Temukan lebih lanjut tentang saya di halaman Tentang Saya."',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify,),
                    const SizedBox(height: 15,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(251, 251, 182, 57),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(55)
                        ),
                      child: TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const tentangSaya(),
                            ),
                          );
                        }, 
                        child: Text('Tentang Saya',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width*0.5,
              decoration: const BoxDecoration(
                color: Color.fromARGB(251, 251, 182, 57),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class tentangSaya extends StatefulWidget {
  const tentangSaya({super.key});

  @override
  State<tentangSaya> createState() => _tentangSayaState();
}

class _tentangSayaState extends State<tentangSaya> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Text('a'),
      ),
    );
  }
}
