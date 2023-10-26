
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kuning1 = Color(0xFFffffb7);
const kuning2 = Color(0xFFfff192);
const kuning3 = Color(0xFFffea61);
const kuning4 = Color(0xFFffdd3c);
const kuning5 = Color.fromARGB(255, 245, 188, 0);
const putih = Color(0xFFffffff);
const hitam = Color.fromARGB(255, 12, 12, 12);

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
    return SafeArea(
      child: LayoutBuilder(
        builder: (context,cons) {
    
              if (screenWidth < 600) {
                // Tampilan untuk layar sempit (misalnya smartphone)
                return Material(
                  child: Container(
                    color: putih,
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
                        Text('Hallo',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: hitam)),
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(text: 'Saya ',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.bold,color: hitam)),
                            TextSpan(text: 'Adi Yogta',style: GoogleFonts.rubik(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w500,color: kuning5)),
                          ],
                        ),),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: kuning5,
                          child: Text('Desainer Grafis / Programmer',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: putih))),
                        const SizedBox(height: 15,),
                        Text('"Selamat datang di portofolio Adi Yogta, seorang Desainer Grafis dan Flutter Developer yang berdedikasi. Saya menggabungkan kreativitas dan keahlian teknis untuk menciptakan pengalaman visual yang memukau dan aplikasi mobile yang inovatif. Temukan lebih lanjut tentang saya di halaman Tentang Saya."',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam,),textAlign: TextAlign.left,),
                        const SizedBox(height: 15,),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                            decoration: BoxDecoration(
                              color: kuning5,
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
                            child: Text('Tentang Saya',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: hitam)),),
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
                                    color: kuning5,
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
                    color: putih,
                    height: screenHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       screenWidth*0.5<600 ? SingleChildScrollView(
                         scrollDirection: Axis.vertical,
                         child: Container(
                                     decoration: const BoxDecoration(
                                       // image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-vector/old-papper_598438-1516.jpg?w=740'),fit: BoxFit.cover,opacity: 0.3)
                                     ),
                                     width: MediaQuery.sizeOf(context).width*0.5,
                                     child: Padding(
                                       padding: screenWidth*0.5 < 600 ? EdgeInsets.symmetric(horizontal: 20,vertical: 20) : EdgeInsets.symmetric(horizontal: 50),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text('Hallo',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: hitam)),
                                           RichText(text: TextSpan(
                          children: [
                            TextSpan(text: 'Saya ',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.bold,color: hitam)),
                            TextSpan(text: 'Adi Yogta',style: GoogleFonts.rubik(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w500,color: kuning5)),
                          ],
                                           ),),
                                           Container(
                          padding: const EdgeInsets.all(8),
                          color: kuning5,
                          child: Text('Desainer Grafis / Programmer',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: putih))),
                                           const SizedBox(height: 15,),
                                           Text('"Selamat datang di portofolio Adi Yogta, seorang Desainer Grafis dan Flutter Developer yang berdedikasi. Saya menggabungkan kreativitas dan keahlian teknis untuk menciptakan pengalaman visual yang memukau dan aplikasi mobile yang inovatif. Temukan lebih lanjut tentang saya di halaman Tentang Saya."',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam,),textAlign: TextAlign.justify,),
                                           const SizedBox(height: 15,),
                                           Container(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                            decoration: BoxDecoration(
                              color: kuning5,
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
                            child: Text('Tentang Saya',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: hitam)),),
                                           )
                                         ],
                                       ),
                                     ),
                                   ),
                       ): Container(
                decoration: const BoxDecoration(
                  // image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-vector/old-papper_598438-1516.jpg?w=740'),fit: BoxFit.cover,opacity: 0.3)
                ),
                width: MediaQuery.sizeOf(context).width*0.5,
                child: Padding(
                  padding: screenWidth*0.5 < 600 ? EdgeInsets.symmetric(horizontal: 20,vertical: 20) : EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hallo',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: hitam)),
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(text: 'Saya ',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.bold,color: hitam)),
                          TextSpan(text: 'Adi Yogta',style: GoogleFonts.rubik(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w500,color: kuning5)),
                        ],
                      ),),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: kuning5,
                        child: Text('Desainer Grafis / Programmer',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: putih))),
                      const SizedBox(height: 15,),
                      Text('"Selamat datang di portofolio Adi Yogta, seorang Desainer Grafis dan Flutter Developer yang berdedikasi. Saya menggabungkan kreativitas dan keahlian teknis untuk menciptakan pengalaman visual yang memukau dan aplikasi mobile yang inovatif. Temukan lebih lanjut tentang saya di halaman Tentang Saya."',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam,),textAlign: TextAlign.justify,),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                          decoration: BoxDecoration(
                            color: kuning5,
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
                          child: Text('Tentang Saya',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: hitam)),),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: screenWidth<1000?Alignment.center: Alignment.bottomCenter,
                width: MediaQuery.sizeOf(context).width*0.5,
                decoration: const BoxDecoration(
                  color: kuning5,
                ),
                child: Image.network('https://drive.google.com/uc?id=1yPxuu_Dtev727uS1lYmuCkIK-nVTTC86',fit: BoxFit.fitWidth,),
              )
                      ]),
                  )
                );
              }
            },
          ),
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
  
  void scrollToContainer(int index) {
    // Menggulirkan ke Container tertentu berdasarkan indeks
    num scrollPosition = index * h;
    List <bool> isSelected = [false,true,false,false,false,false,false];

    setState(() {
      // Setel isSelected[index] menjadi true dan isSelected lainnya menjadi false
      for (int i = 0; i < isSelected.length; i++) {
        isSelected[i] = i == index;
      }
    });
    print(isSelected[index]);
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

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double textSize1 = (screenWidth < 600 && screenHeight < 600) ? 35.0 : (screenWidth < 1200  && screenHeight < 1200) ? 45.0 : (screenWidth > 1200 && screenHeight > 1200)?55.0 : screenWidth < 600 ? 35 : screenWidth < 1200 ? 45 : screenWidth > 1200 ?50 : screenHeight < 600 ? 55 : screenHeight < 1200 ? 45 : screenHeight > 1200 ? 35 : 45;
    double textSize2 = (screenWidth < 600 && screenHeight < 600) ? 20.0 : (screenWidth < 1200  && screenHeight < 1200) ? 30.0 : (screenWidth > 1200 && screenHeight > 1200)?40.0 : screenWidth < 600 ? 20 : screenWidth < 1200 ? 30 : screenWidth > 1200 ?40 : screenHeight < 600 ? 40 : screenHeight < 1200 ? 30 : screenHeight > 1200 ? 20 : 30;
    double textSize3 = (screenWidth < 600 && screenHeight < 600) ? 11.0 : (screenWidth < 1200  && screenHeight < 1200) ? 17.0 : (screenWidth > 1200 && screenHeight > 1200)?23.0 : screenWidth < 600 ? 11 : screenWidth < 1200 ? 17 : screenWidth > 1200 ?23 : screenHeight < 600 ? 23 : screenHeight < 1200 ? 17 : screenHeight > 1200 ?11 : 16;

    double top = h * 0.15;
    double sizeBar = h * 0.7;

    return Material(
      child: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  // Container 1
                  Container(
                    padding:w<600 ?EdgeInsets.only(top: 30,left: 0) : EdgeInsets.only(top: 30,left: 190),
                    height: h,
                    width: w,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [putih,kuning1])
                    ),
                    child: LayoutBuilder(
                      builder: (context,cons) {
                        if(cons.maxWidth>600){
                          return Column(
                            children: [
                              Text('TENTANG SAYA',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                              const Divider(
                                height: 10,
                                color: hitam,
                                ),
                              Padding(
                                padding: EdgeInsets.only(top: top*0.25),
                                child: Row(
                                  children: [
                                     Image.network('https://drive.google.com/uc?id=1ERQrTw7kQItWYOwBGdB5ReSEFhI6PuRt',height: MediaQuery.sizeOf(context).height*0.35,),
                                     w < 1500 ? Expanded(
                                       child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [                 
                                              Text('Saya ',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.w400, color: hitam)),
                                              Text('Adi Yogta Putra ',style: GoogleFonts.sono(fontSize: textSize2, fontWeight: FontWeight.bold, color: hitam)),
                                            ],
                                           ),
                                           Text('Desainer Grafis / Programmer',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.w400, color: hitam)),
                                           Padding(
                                            padding: const EdgeInsets.only(top: 20,right: 80),
                                            child: Text('Lulusan Sarjana Teknologi Informasi dari Universitas Muhammadiyah Yogyakarta tahun 2023. Saya memiliki minat yang mendalam dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter (Dart). Selama kuliah, saya pernah mengerjakan proyek freelance untuk mengembangkan sebuah aplikasi arisan online. Di samping itu, saya juga telah aktif dalam organisasi kampus, pernah menjadi Ketua Divisi Publikasi dan Dokumentasi tingkat jurusan maupun fakultas, yang memberikan saya kesempatan untuk mengasah kemampuan dalam bidang teknologi informasi dan publikasi. Saya juga memiliki pengalaman profesional selama 1 setengah tahun sebagai Editor Video dan Desainer Grafis di perusahaan Latifa Jewelry, di mana saya mengembangkan keterampilan editing video dan desain grafis yang kuat. Saya bersemangat untuk terus mengembangkan diri dan berkontribusi dalam dunia teknologi serta desain.',style: GoogleFonts.montserrat(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam),textAlign: TextAlign.left,),
                                          ),
                                         ],
                                       ),
                                     ): Expanded(
                                       child: Column(
                                         children: [
                                           Row(
                                              children: [                 
                                              Text('Saya ',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.w400, color: hitam)),
                                              Text('Adi Yogta Putra ',style: GoogleFonts.sono(fontSize: textSize2, fontWeight: FontWeight.bold, color: hitam)),
                                              Text('Desainer Grafis / Programmer',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.w400, color: hitam)),
                                            ],
                                           ),
                                           Padding(
                                              padding: const EdgeInsets.only(top: 20,right: 80),
                                              child: Text('Lulusan Sarjana Teknologi Informasi dari Universitas Muhammadiyah Yogyakarta tahun 2023. Saya memiliki minat yang mendalam dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter (Dart). Selama kuliah, saya pernah mengerjakan proyek freelance untuk mengembangkan sebuah aplikasi arisan online. Di samping itu, saya juga telah aktif dalam organisasi kampus, pernah menjadi Ketua Divisi Publikasi dan Dokumentasi tingkat jurusan maupun fakultas, yang memberikan saya kesempatan untuk mengasah kemampuan dalam bidang teknologi informasi dan publikasi. Saya juga memiliki pengalaman profesional selama 1 setengah tahun sebagai Editor Video dan Desainer Grafis di perusahaan Latifa Jewelry, di mana saya mengembangkan keterampilan editing video dan desain grafis yang kuat. Saya bersemangat untuk terus mengembangkan diri dan berkontribusi dalam dunia teknologi serta desain.',style: GoogleFonts.montserrat(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam),textAlign: TextAlign.left,),
                                            ),
                                         ],
                                       ),
                                     ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }else{
                          return Column(
                            children: [
                              Text('TENTANG SAYA',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                              const Divider(
                                height: 10,
                                color: hitam,
                                ),
                              Image.network('https://drive.google.com/uc?id=1ERQrTw7kQItWYOwBGdB5ReSEFhI6PuRt',height: MediaQuery.sizeOf(context).height*0.20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [                 
                                Text('Saya ',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.w400, color: hitam)),
                                Text('Adi Yogta Putra ',style: GoogleFonts.sono(fontSize: textSize2, fontWeight: FontWeight.bold, color: hitam)),
                                ],
                              ),
                               Padding(
                                              padding: const EdgeInsets.only(top: 20,left: 60,right: 20),
                                              child: Text('Lulusan Sarjana Teknologi Informasi dari Universitas Muhammadiyah Yogyakarta tahun 2023. Saya memiliki minat yang mendalam dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter (Dart). Selama kuliah, saya pernah mengerjakan proyek freelance untuk mengembangkan sebuah aplikasi arisan online. Di samping itu, saya juga telah aktif dalam organisasi kampus, pernah menjadi Ketua Divisi Publikasi dan Dokumentasi tingkat jurusan maupun fakultas, yang memberikan saya kesempatan untuk mengasah kemampuan dalam bidang teknologi informasi dan publikasi. Saya juga memiliki pengalaman profesional selama 1 setengah tahun sebagai Editor Video dan Desainer Grafis di perusahaan Latifa Jewelry, di mana saya mengembangkan keterampilan editing video dan desain grafis yang kuat. Saya bersemangat untuk terus mengembangkan diri dan berkontribusi dalam dunia teknologi serta desain.',style: GoogleFonts.montserrat(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam),textAlign: TextAlign.left,),)
                            ],
                          );
                        }
                      }
                    ),
            //         child: Stack(children: [
            //           SingleChildScrollView(
            //             controller: _scrollController2,
            //             scrollDirection: Axis.horizontal,
            //             child: Row(
            //               children: [
            //                 Container(
            //                   height: 400,
            //                   width: w,
            //                   color: Colors.white,
            //                 ),
            //                 Container(
            //                   width: w,
            //                   height: 400,
            //                   color: Colors.black,
            //                 ),
            //                 Container(
            //                   height: 400,
            //                   width: w,
            //                   color: Colors.white,
            //                 ),
            //                 Container(
            //                   height: 400,
            //                   width: w,
            //                   color: Colors.black,
            //                 ),
            //                 Container(
            //                   height: 400,
            //                   width: w,
            //                   color: Colors.white,
            //                 ),
            //                 Container(
            //                   height: 400,
            //                   width: w,
            //                   color: Colors.black,
            //                 )
            //               ],
            //             ),
            //           ),
            //           Positioned(
            //   top: 0,
            //   left: 0,
            //   bottom: 0,
            //   right: 0,
            //   child: Row(
            //     children: [
            //       TextButton(
            //         onPressed: () => scrollToContainer2(0),
            //         child: Text('Scroll to Container 1'),
            //       ),
            //       TextButton(
            //         onPressed: () => scrollToContainer2(1),
            //         child: Text('Scroll to Container 2'),
            //       ),
            //       TextButton(
            //         onPressed: () => scrollToContainer2(2),
            //         child: Text('Scroll to Container 3'),
            //       ),
            //       TextButton(
            //         onPressed: () => scrollToContainer2(3),
            //         child: Text('Scroll to Container 4'),
            //       ),
            //       TextButton(
            //         onPressed: () => scrollToContainer2(4),
            //         child: Text('Scroll to Container 5'),
            //       ),
            //       TextButton(
            //         onPressed: () => scrollToContainer2(5),
            //         child: Text('Scroll to Container 6'),
            //       ),
            //     ],
            //   ),
            // ),
            //         ]),
            //         // Konten Container 1
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
          ),
          h < 600 ? Positioned(
            top: top,
            left: 10,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2,horizontal: 4),
              height: sizeBar,
              width: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [hitam,Colors.white]),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(22)
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      TextButton(
                      onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homePage(),)),
                      child: Icon(Icons.home_rounded,color: putih,)),
                    
                    TextButton(
                      onPressed: () => scrollToContainer(0),
                      child: Container(
                        child: Text('Tentang Saya')),
                    ),
                    TextButton(
                      onPressed: () => scrollToContainer(1),
                      child: Text('Scroll to Container 2'),
                    ),
                    TextButton(
                      onPressed: () => scrollToContainer(2),
                      child: Text('Scroll to Container 2'),
                    ),
                    TextButton(
                      onPressed: () => scrollToContainer(3),
                      child: Text('Scroll to Container 2'),
                    ),
                    TextButton(
                      onPressed: () => scrollToContainer(4),
                      child: Text('Scroll to Container 2'),
                    ),
                    TextButton(
                      onPressed: () => scrollToContainer(5),
                      child: Text('Scroll to Container 2'),
                    ),
                  ],
                ),
              ),
            ),
          ) : w < 600 ? Positioned(
            top: top + (h*0.1),
            left: 0,
            child: Container(
              width: 40,
              height: sizeBar - (h*0.2) ,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    color: Colors.black38,
                    blurRadius: 1,
                    spreadRadius: 0,
                    offset: Offset(2,0)
                  )
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white,hitam]),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(22),topRight: Radius.circular(22))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    TextButton(
                    onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homePage(),)),
                    child: Icon(Icons.home_rounded,color: putih,)),
                  
                  TextButton(
                    onPressed: () => scrollToContainer(0),
                    child: Container(
                      
                      child: Icon(Icons.account_circle,color: putih,)),
                  ),
                  TextButton(
                    onPressed: () => scrollToContainer(1),
                    child: Icon(Icons.home_rounded,color: putih,),
                  ),
                  TextButton(
                    onPressed: () => scrollToContainer(2),
                    child: Icon(Icons.home_rounded,color: putih,),
                  ),
                  TextButton(
                    onPressed: () => scrollToContainer(3),
                    child: Icon(Icons.home_rounded,color: putih,),
                  ),
                  TextButton(
                    onPressed: () => scrollToContainer(4),
                    child: Icon(Icons.home_rounded,color: putih,),
                  ),
                  TextButton(
                    onPressed: () => scrollToContainer(5),
                    child: Icon(Icons.home_rounded,color: putih,),
                  ),
                ],
              ),
            ),
          ) : Positioned(
            top: top,
            left: 10,
            child: Container(
              height: sizeBar,
              width: 180,
              decoration: BoxDecoration(
                color: hitam,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(22)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    TextButton(
                    onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homePage(),)),
                    child: Icon(Icons.home_rounded,color: putih,)),
                  
                  TextButton(
                    onPressed: () => scrollToContainer(0),
                    child: Container(
                      
                      child: Text('Tentang Saya')),
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
          ),
        ],
      ),
    );
  }
}
