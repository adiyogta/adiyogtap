import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const ijo = Color(0xFF3B421A);
const merah = Color(0xFF9F2A00);
const kuning = Color(0xFFf59901);
const cream = Color(0xFFEDD498);
const oren = Color(0xFFf56e10);

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
        color: ijo,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: const BoxDecoration(
                // image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-vector/old-papper_598438-1516.jpg?w=740'),fit: BoxFit.cover,opacity: 0.3)
              ),
              width: MediaQuery.sizeOf(context).width*0.5,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height*0.2,horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hallo',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 45,fontWeight: FontWeight.bold,color: cream)),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(text: 'Saya ',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 65,fontWeight: FontWeight.bold,color: cream)),
                        TextSpan(text: 'Adi Yogta',style: GoogleFonts.rubik(fontStyle: FontStyle.normal,fontSize: 65,fontWeight: FontWeight.w500,color: kuning)),
                      ],
                    ),),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: kuning,
                      child: Text('Desainer Grafis / Programmer',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))),
                    const SizedBox(height: 15,),
                    Text('"Selamat datang di portofolio Adi Yogta, seorang Desainer Grafis dan Flutter Developer yang berdedikasi. Saya menggabungkan kreativitas dan keahlian teknis untuk menciptakan pengalaman visual yang memukau dan aplikasi mobile yang inovatif. Temukan lebih lanjut tentang saya di halaman Tentang Saya."',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 16,fontWeight: FontWeight.bold,color: cream,),textAlign: TextAlign.justify,),
                    const SizedBox(height: 15,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(245, 245, 153, 1),
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
              alignment: Alignment.bottomCenter,
              width: MediaQuery.sizeOf(context).width*0.5,
              decoration: const BoxDecoration(
                color: Color.fromARGB(245, 245, 153, 1),
              ),
              child: Image.network('https://drive.google.com/uc?id=1yPxuu_Dtev727uS1lYmuCkIK-nVTTC86'),
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
class MenuItem {
  final String name;
   bool pilih;

  MenuItem({
    required this.name,
    required this.pilih,
  });
}

class _tentangSayaState extends State<tentangSaya> {

final List<MenuItem> menuItems = [
  MenuItem(
    name: 'Beranda',
    pilih: false,
    
  ),
  MenuItem(
    name: 'Tentang Saya',
    pilih: true,
  ),
  MenuItem(
    name: 'Resume',
    pilih: false,
  ),
  MenuItem(
    name: 'Portofolio',
    pilih: false,
  ),
  MenuItem(
    name: 'Kontak Refrensi',
    pilih: false,
  ),
  MenuItem(
    name: 'Kontak Saya',
    pilih: false,
  ),
];

  @override
  Widget build(BuildContext context) {
     List<Widget> buttons = [];
int a;
int i ;
  for (i= 0; i < menuItems.length; i++);
  a=i;
   buttons.add(
      Padding(
        padding: const EdgeInsets.symmetric(vertical:10),
        child: TextButton(
          onPressed: () {
            print(a);
            int? j;
            j == a;
              if (j == a) {
                menuItems[a].pilih = true; // Mengatur status menjadi true untuk tombol yang diklik
              } 
            
            
          },
          child: Ink(
            padding: const EdgeInsets.only(top: 3,right: 8,left: 8,bottom: 6),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25),
              color: menuItems[a].pilih == false ? Colors.transparent : cream,
            ),
            child: Text(
                menuItems[a].name,
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:menuItems[a].pilih == false ? cream : ijo,
                ),
              ),
            ),
          ),
        ),
    );
    return Material(
      child: 
      Container(
        child: Row(
          children: [
            Container(
              color: ijo,
              width: 200,
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: kuning,
                    child: Image.network('https://drive.google.com/uc?id=1yPxuu_Dtev727uS1lYmuCkIK-nVTTC86',fit: BoxFit.fitHeight,scale: 0.6,)),
                    Column(children: buttons,)
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: cream,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


