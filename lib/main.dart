
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const ijo = Color(0xFF3B421A);
const merah = Color(0xFF9F2A00);
const kuning = Color(0xFFf59901);
const cream = Color(0xFFEDD498);
const oren = Color(0xFFf56e10);



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: homePage(),
      ),
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double textSize1 = (screenWidth < 600 && screenHeight < 600) ? 35.0 : (screenWidth < 1200  && screenHeight < 1200) ? 45.0 : (screenWidth > 1200 && screenHeight > 1200)?55.0 : screenWidth < 600 ? 35 : screenWidth < 1200 ? 45 : screenWidth > 1200 ?50 : screenHeight < 600 ? 55 : screenHeight < 1200 ? 45 : screenHeight > 1200 ? 35 : 45;
    double textSize2 = (screenWidth < 600 && screenHeight < 600) ? 20.0 : (screenWidth < 1200  && screenHeight < 1200) ? 30.0 : (screenWidth > 1200 && screenHeight > 1200)?40.0 : screenWidth < 600 ? 20 : screenWidth < 1200 ? 30 : screenWidth > 1200 ?40 : screenHeight < 600 ? 40 : screenHeight < 1200 ? 30 : screenHeight > 1200 ? 20 : 30;
    double textSize3 = (screenWidth < 600 && screenHeight < 600) ? 11.0 : (screenWidth < 1200  && screenHeight < 1200) ? 17.0 : (screenWidth > 1200 && screenHeight > 1200)?23.0 : screenWidth < 600 ? 11 : screenWidth < 1200 ? 17 : screenWidth > 1200 ?23 : screenHeight < 600 ? 23 : screenHeight < 1200 ? 17 : screenHeight > 1200 ?11 : 16;
    return LayoutBuilder(
      builder: (context,cons) {

            if (screenWidth < 600) {
              // Tampilan untuk layar sempit (misalnya smartphone)
              return Material(
                child: Container(
                  color: ijo,
                  height: screenHeight,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                                decoration: const BoxDecoration(
                                  // image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-vector/old-papper_598438-1516.jpg?w=740'),fit: BoxFit.cover,opacity: 0.3)
                                ),
                                width: MediaQuery.sizeOf(context).width,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Hallo',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: cream)),
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(text: 'Saya ',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.bold,color: cream)),
                          TextSpan(text: 'Adi Yogta',style: GoogleFonts.rubik(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w500,color: kuning)),
                        ],
                      ),),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: kuning,
                        child: Text('Desainer Grafis / Programmer',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: Colors.black))),
                      const SizedBox(height: 15,),
                      Text('"Selamat datang di portofolio Adi Yogta, seorang Desainer Grafis dan Flutter Developer yang berdedikasi. Saya menggabungkan kreativitas dan keahlian teknis untuk menciptakan pengalaman visual yang memukau dan aplikasi mobile yang inovatif. Temukan lebih lanjut tentang saya di halaman Tentang Saya."',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: cream,),textAlign: TextAlign.left,),
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
                                builder: (context) => tentangSaya(),
                              ),
                            );
                          }, 
                          child: Text('Tentang Saya',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: Colors.black)),),
                      )
                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                width: MediaQuery.sizeOf(context).width*0.5,
                                decoration:  BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color.fromARGB(245, 245, 153, 1),
                                ),
                                child: Image.network('https://drive.google.com/uc?id=1yPxuu_Dtev727uS1lYmuCkIK-nVTTC86'),
                              )
                      ]),
                  ),
                )
              );

            } else {
              // Tampilan untuk layar lebar (misalnya tablet atau desktop)
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
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hallo',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: cream)),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(text: 'Saya ',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.bold,color: cream)),
                        TextSpan(text: 'Adi Yogta',style: GoogleFonts.rubik(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w500,color: kuning)),
                      ],
                    ),),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: kuning,
                      child: Text('Desainer Grafis / Programmer',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: Colors.black))),
                    const SizedBox(height: 15,),
                    Text('"Selamat datang di portofolio Adi Yogta, seorang Desainer Grafis dan Flutter Developer yang berdedikasi. Saya menggabungkan kreativitas dan keahlian teknis untuk menciptakan pengalaman visual yang memukau dan aplikasi mobile yang inovatif. Temukan lebih lanjut tentang saya di halaman Tentang Saya."',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: cream,),textAlign: TextAlign.justify,),
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
                              builder: (context) => tentangSaya(),
                            ),
                          );
                        }, 
                        child: Text('Tentang Saya',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: Colors.black)),),
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: screenWidth<1000?Alignment.center: Alignment.bottomCenter,
              width: MediaQuery.sizeOf(context).width*0.5,
              decoration: const BoxDecoration(
                color: Color.fromARGB(245, 245, 153, 1),
              ),
              child: Image.network('https://drive.google.com/uc?id=1yPxuu_Dtev727uS1lYmuCkIK-nVTTC86',fit: BoxFit.fitWidth,),
            )
                    ]),
                )
              );
            }
          },
        );
  }
}

class tentangSaya extends StatefulWidget {
  @override
  State<tentangSaya> createState() => _tentangSayaState();
}

class _tentangSayaState extends State<tentangSaya> {
  ScrollController _scrollController = ScrollController();
  ScrollController _scrollController2 = ScrollController();
  get h => MediaQuery.sizeOf(context).height;
get w => MediaQuery.sizeOf(context).width;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  void dispose2() {
    _scrollController2.dispose();
    super.dispose();
  }

  void scrollToContainer(int index) {
    // Menggulirkan ke Container tertentu berdasarkan indeks
    num scrollPosition = index * h; // Sesuaikan dengan posisi vertikal yang diinginkan
    _scrollController.animateTo(
      scrollPosition as double,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInQuint,
    );
  }

  void scrollToContainer2(int index) {
    // Menggulirkan ke Container tertentu berdasarkan indeks
    num scrollPosition2 = index * w; // Sesuaikan dengan posisi vertikal yang diinginkan
    _scrollController2.animateTo(
      scrollPosition2 as double,
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOutQuint,
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              // Container 1
              Container(
                height: h,
                color: Colors.red,
                child: Stack(children: [
                  SingleChildScrollView(
                    controller: _scrollController2,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 400,
                          width: w,
                          color: Colors.white,
                        ),
                        Container(
                          width: w,
                          height: 400,
                          color: Colors.black,
                        ),
                        Container(
                          height: 400,
                          width: w,
                          color: Colors.white,
                        ),
                        Container(
                          height: 400,
                          width: w,
                          color: Colors.black,
                        ),
                        Container(
                          height: 400,
                          width: w,
                          color: Colors.white,
                        ),
                        Container(
                          height: 400,
                          width: w,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Positioned(
          top: 0,
          left: 0,
          bottom: 0,
          right: 0,
          child: Row(
            children: [
              TextButton(
                onPressed: () => scrollToContainer2(0),
                child: Text('Scroll to Container 1'),
              ),
              TextButton(
                onPressed: () => scrollToContainer2(1),
                child: Text('Scroll to Container 2'),
              ),
              TextButton(
                onPressed: () => scrollToContainer2(2),
                child: Text('Scroll to Container 3'),
              ),
              TextButton(
                onPressed: () => scrollToContainer2(3),
                child: Text('Scroll to Container 4'),
              ),
              TextButton(
                onPressed: () => scrollToContainer2(4),
                child: Text('Scroll to Container 5'),
              ),
              TextButton(
                onPressed: () => scrollToContainer2(5),
                child: Text('Scroll to Container 6'),
              ),
            ],
          ),
        ),
                ]),
                // Konten Container 1
              ),

              // Container 2
              Container(
                height: h,
                color: Colors.blue,
                // Konten Container 2
              ),

              // Container 3
              Container(
                height: h,
                color: Colors.green,
                // Konten Container 3
              ),

              // Container 4
              Container(
                height: h,
                color: Colors.orange,
                // Konten Container 4
              ),

              // Container 5
              Container(
                height: h,
                color: Colors.purple,
                // Konten Container 5
              ),

              // Container 6
              Container(
                height: h,
                color: Colors.yellow,
                // Konten Container 6
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          bottom: 0,
          left: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        TextButton(
                onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homePage(),)),
                child: Text('home'),
              ),
              TextButton(
                onPressed: () => scrollToContainer(0),
                child: Text('Scroll to Container 1'),
              ),
              TextButton(
                onPressed: () => scrollToContainer(1),
                child: Text('Scroll to Container 2'),
              ),
              TextButton(
                onPressed: () => scrollToContainer(2),
                child: Text('Scroll to Container 3'),
              ),
              TextButton(
                onPressed: () => scrollToContainer(3),
                child: Text('Scroll to Container 4'),
              ),
              TextButton(
                onPressed: () => scrollToContainer(4),
                child: Text('Scroll to Container 5'),
              ),
              TextButton(
                onPressed: () => scrollToContainer(5),
                child: Text('Scroll to Container 6'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
