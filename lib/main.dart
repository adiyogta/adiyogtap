
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const abuabu = Color(0xffD9D9D9);
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
  ScrollController _scrollEducation = ScrollController();
  ScrollController _scrollEducation2 = ScrollController();
  IconData icon = Icons.arrow_forward_ios;
  

  get h => MediaQuery.sizeOf(context).height;
get w => MediaQuery.sizeOf(context).width;

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController2.dispose();
    _scrollEducation.dispose();
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

  void scrollEducation2(int index) {
   num scrollEdu2 = index * (w*0.8); // Sesuaikan dengan posisi vertikal yang diinginkan
    _scrollEducation2.animateTo(
      scrollEdu2 as double,
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOutQuint,
    );
  }

  void scrollEducation() {
     double scrollValue = 350.0;
  double scrollMaxValue = 400; // Nilai batasan yang Anda tentukan
  double scrollMinValue = -350.0; // Nilai untuk mengatur ulang

  // Periksa apakah scrollValue sudah mencapai batas kanan
  if (scrollValue + _scrollEducation.offset >= scrollMaxValue) {
    // Setel ulang ke -350
    scrollValue = scrollMinValue;
  }

  _scrollEducation.animateTo(
    scrollValue,
    duration: Duration(milliseconds: 400),
    curve: Curves.easeInOutQuint,
  );
  setState(() {
      icon = scrollValue == scrollMinValue ? Icons.arrow_back_ios : Icons.arrow_forward_ios;
    });
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
                      color: abuabu),
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
                                            child: Text('Saya adalah lulusan Teknologi Informasi di Universitas Muhammadiyah Yogyakarta tahun 2023, dengan minat dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter. Saya memiliki pengalaman dalam proyek freelance aplikasi arisan online, kepemimpinan organisasi kampus sebagai Ketua Divisi Publikasi dan Dokumentasi, serta pengalaman profesional selama 1,5 tahun sebagai Editor Video dan Desainer Grafis di Latifa Jewelry. Saya bersemangat untuk terus berkembang dalam dunia teknologi dan desain.',style: GoogleFonts.montserrat(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam),textAlign: TextAlign.left,),
                                          ),
                                           SizedBox(height: 20,),
                                            TextButton(
                                              onPressed: (){},
                                              child: Container(
                                                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: kuning4,
                                                  border: Border.all(width: 2,color: putih)
                                                ),
                                                child: Text('Download CV',style: GoogleFonts.nunito(fontSize: textSize3,color: putih),)))
                                         ],
                                       ),
                                     ): Expanded(
                                       child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                              child: Text('Saya adalah lulusan Teknologi Informasi di Universitas Muhammadiyah Yogyakarta tahun 2023, dengan minat dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter. Saya memiliki pengalaman dalam proyek freelance aplikasi arisan online, kepemimpinan organisasi kampus sebagai Ketua Divisi Publikasi dan Dokumentasi, serta pengalaman profesional selama 1,5 tahun sebagai Editor Video dan Desainer Grafis di Latifa Jewelry. Saya bersemangat untuk terus berkembang dalam dunia teknologi dan desain.',style: GoogleFonts.montserrat(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam),textAlign: TextAlign.left,),
                                            ),
                                                SizedBox(height: 20,),
                                            TextButton(
                                              onPressed: (){},
                                              child: Container(
                                                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: kuning4,
                                                  border: Border.all(width: 2,color: putih)
                                                ),
                                                child: Text('Download CV',style: GoogleFonts.nunito(fontSize: textSize3,color: putih),)))
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
                                Text('Adi Yogta Putra ',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                ],
                              ),
                              Text('Desainer Grafis / Programmer',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.w400, color: hitam)),
                               Padding(
                                              padding: const EdgeInsets.only(top: 20,left: 60,right: 20),
                                              child: Text('Saya adalah lulusan Teknologi Informasi di Universitas Muhammadiyah Yogyakarta tahun 2023, dengan minat dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter. Saya memiliki pengalaman dalam proyek freelance aplikasi arisan online, kepemimpinan organisasi kampus sebagai Ketua Divisi Publikasi dan Dokumentasi, serta pengalaman profesional selama 1,5 tahun sebagai Editor Video dan Desainer Grafis di Latifa Jewelry. Saya bersemangat untuk terus berkembang dalam dunia teknologi dan desain.',style: GoogleFonts.montserrat(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam),textAlign: TextAlign.left,),),
                                              SizedBox(height: 20,),
                                            TextButton(
                                              onPressed: (){},
                                              child: Container(
                                                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: kuning4,
                                                  border: Border.all(width: 2,color: putih)
                                                ),
                                                child: Text('Download CV',style: GoogleFonts.nunito(fontSize: textSize3,color: putih),)))
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
                    padding:w<600 ?EdgeInsets.only(top: 30,left: 0) : EdgeInsets.only(top: 30,left: 190),
                    height: h,
                    width: w,
                    decoration: const BoxDecoration(
                      color: abuabu
                    ),
                    child: LayoutBuilder(
                      builder: (context,cons) {
                       if(cons.maxWidth>600){
                         return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('RESUME',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                                  const Divider(
                                    height: 10,
                                    color: hitam,
                                    ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Pendidikan',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                  const SizedBox(height: 20,),
                                  Stack(
                                    children: [
                                      SingleChildScrollView(
                                        controller: _scrollEducation,
                                        scrollDirection: Axis.horizontal,
                                        child: IntrinsicHeight(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                          margin: const EdgeInsets.only(right: 20),
                                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                          width: 350,
                                                          decoration: BoxDecoration(
                                                            color: kuning2,
                                                            shape: BoxShape.rectangle,
                                                            borderRadius: BorderRadius.circular(23)
                                                          ),
                                                          child: 
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                          children: [
                                                            Text('SD',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                                            Text('SDN 1 Beringin Raya Kemiling Lampung',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                            Text('2004-2010',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                          
                                                          ],
                                                        ),
                                                        ),
                                              Container(
                                                margin: const EdgeInsets.only(right: 20),
                                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                width: 350,
                                                decoration: BoxDecoration(
                                                  color: kuning4,
                                                  shape: BoxShape.rectangle,
                                                  borderRadius: BorderRadius.circular(23)
                                                ),
                                                child: 
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text('SMP',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                                  Text('MTS AL-Fatah Natar Lampung',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                  Text('2010-2013',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                
                                                ],
                                              ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(right: 20),
                                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                width: 350,
                                                decoration: BoxDecoration(
                                                  color: kuning2,
                                                  shape: BoxShape.rectangle,
                                                  borderRadius: BorderRadius.circular(23)
                                                ),
                                                child: 
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text('SMA',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                                  Text('MA AL-Fatah Natar Lampung',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                  Text('2013-2016',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                
                                                ],
                                              ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                width: 350,
                                                decoration: BoxDecoration(
                                                  color: kuning4,
                                                  shape: BoxShape.rectangle,
                                                  borderRadius: BorderRadius.circular(23)
                                                ),
                                                child: 
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text('Strata 1',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                                  Text('Universitas Muhammadiyah Yogyakarta',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                  Text('2016-2023',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                ],
                                              ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          height: 35,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: kuning5
                                          ),
                                          child: TextButton(
                                          child: Icon(icon,color: hitam,textDirection: TextDirection.ltr),
                                          onPressed: () => scrollEducation(),),
                                        ))
                                    ],
                                  ),
                                  const SizedBox(height: 30,),
                                  Text('Pengalaman',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                  const SizedBox(height: 20,),
                                  Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        width: MediaQuery.sizeOf(context).width*0.65,
                        decoration: BoxDecoration(
                          color: kuning3,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(23)
                        ),
                        child: 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Programmer Magang Di Perusahaan Monte Moria Indonesia',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                          // Text('Membuat website admin restaurant berbasis POST dengan beranggotakan 2 orang dengan platform Angular JS',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('April 2019 - Agustus 2019',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                              TextButton(onPressed: (){},
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(25),
                                  color: kuning5
                                ),
                                child: Text('DETAIL',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: Colors.white))))
                            ],
                          ),
                        
                        ],
                      ),
                      ),
                 Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        width: MediaQuery.sizeOf(context).width*0.65,
                        decoration: BoxDecoration(
                          color: kuning2,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(23)
                        ),
                        child: 
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Membuat Project Aplikasi Arisan',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                            // Text('Dalam tim 3 orang, saya berperan sebagai programmer menggunakan framework Flutter untuk mengembangkan aplikasi arisan berbasis Android dengan fungsi CRUD.',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Februari 2021 - April 2021',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                TextButton(onPressed: (){},
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(25),
                                  color: kuning5
                                ),
                                child: Text('DETAIL',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: Colors.white))))
                              ],
                            ),
                          
                          ],
                        ),
                      ),
                      ),
                 Container(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        width: MediaQuery.sizeOf(context).width*0.65,
                        decoration: BoxDecoration(
                          color: kuning3,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(23)
                        ),
                        child: 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Editor Video Perusahaan Latifa Jewelry',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                          // Text('Mengambil gambar dan video cincin untuk bahan membuat video',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                          // Text('Membuat konten Desain dan video harian dengan isi berupa promosi penjualan cincin',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Juli 2021 - Desember 2022',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                              TextButton(onPressed: (){},
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(25),
                                  color: kuning5
                                ),
                                child: Text('DETAIL',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: Colors.white))))
                            ],
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('RESUME',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                                  const Divider(
                                    height: 10,
                                    color: hitam,
                                    ),Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Pendidikan',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                  const SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      TextButton(onPressed: () => scrollEducation2(0), child: Text('SD')),
                                      TextButton(onPressed: () => scrollEducation2(1), child: Text('SD')),
                                      TextButton(onPressed: () => scrollEducation2(2), child: Text('SD')),
                                      TextButton(onPressed: () => scrollEducation2(3), child: Text('SD')),
                                    ],
                                  ),
                                      SingleChildScrollView(
                                        controller: _scrollEducation2,
                                        scrollDirection: Axis.horizontal,
                                        child: IntrinsicHeight(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                          margin: const EdgeInsets.only(right: 20),
                                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                          width: w*0.8,
                                                          decoration: BoxDecoration(
                                                            color: kuning2,
                                                            shape: BoxShape.rectangle,
                                                            borderRadius: BorderRadius.circular(23)
                                                          ),
                                                          child: 
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                          children: [
                                                            Text('SD',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                                            Text('SDN 1 Beringin Raya Kemiling Lampung',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                            Text('2004-2010',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                          
                                                          ],
                                                        ),
                                                        ),
                                              Container(
                                                margin: const EdgeInsets.only(right: 20),
                                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                width: w*0.8,
                                                decoration: BoxDecoration(
                                                  color: kuning4,
                                                  shape: BoxShape.rectangle,
                                                  borderRadius: BorderRadius.circular(23)
                                                ),
                                                child: 
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text('SMP',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                                  Text('MTS AL-Fatah Natar Lampung',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                  Text('2010-2013',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                
                                                ],
                                              ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(right: 20),
                                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                width: w*0.8,
                                                decoration: BoxDecoration(
                                                  color: kuning2,
                                                  shape: BoxShape.rectangle,
                                                  borderRadius: BorderRadius.circular(23)
                                                ),
                                                child: 
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text('SMA',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                                  Text('MA AL-Fatah Natar Lampung',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                  Text('2013-2016',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                
                                                ],
                                              ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                width: w*0.8,
                                                decoration: BoxDecoration(
                                                  color: kuning4,
                                                  shape: BoxShape.rectangle,
                                                  borderRadius: BorderRadius.circular(23)
                                                ),
                                                child: 
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text('Strata 1',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                                  Text('Universitas Muhammadiyah Yogyakarta',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                  Text('2016-2023',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                ],
                                              ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                  const SizedBox(height: 30,),
                                  Text('Pengalaman',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                  const SizedBox(height: 20,),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                    width: w,
                                    decoration: BoxDecoration(
                                      color: kuning3,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(23)
                                    ),
                                    child: 
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('Programmer Magang Di Perusahaan Monte Moria Indonesia',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                      // Text('Membuat website admin restaurant berbasis POST dengan beranggotakan 2 orang dengan platform Angular JS',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('April 2019 - Agustus 2019',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                          IconButton(
                                          onPressed: (){},
                                          icon: Container(
                                            decoration: BoxDecoration(
                                              color: putih,
                                              shape: BoxShape.rectangle
                                            ),
                                            child: Icon(Icons.open_in_full,)))
                                        ],
                                      ),
                                    
                                    ],
                                  ),
                                  ),
                                  Container(
                                          margin: const EdgeInsets.only(bottom: 20),
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                          width: w,
                                          decoration: BoxDecoration(
                                            color: kuning2,
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.circular(23)
                                          ),
                                          child: 
                                        SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text('Membuat Project Aplikasi Arisan',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                              // Text('Dalam tim 3 orang, saya berperan sebagai programmer menggunakan framework Flutter untuk mengembangkan aplikasi arisan berbasis Android dengan fungsi CRUD.',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('Februari 2021 - April 2021',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                   IconButton(
                                          onPressed: (){},
                                          icon: Container(
                                            decoration: BoxDecoration(
                                              color: putih,
                                              shape: BoxShape.rectangle
                                            ),
                                            child: Icon(Icons.open_in_full,)))
                                                ],
                                              ),
                                            
                                            ],
                                          ),
                                        ),
                                        ),
                                  Container(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                          width: w,
                                          decoration: BoxDecoration(
                                            color: kuning3,
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.circular(23)
                                          ),
                                          child: 
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Editor Video Perusahaan Latifa Jewelry',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                            // Text('Mengambil gambar dan video cincin untuk bahan membuat video',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                            // Text('Membuat konten Desain dan video harian dengan isi berupa promosi penjualan cincin',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: hitam)),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('Juli 2021 - Desember 2022',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                 IconButton(
                                          onPressed: (){},
                                          icon: Container(
                                            decoration: BoxDecoration(
                                              color: putih,
                                              shape: BoxShape.rectangle
                                            ),
                                            child: Icon(Icons.open_in_full,)))
                                              ],
                                            ),
                                          
                                          ],
                                        ),
                                        ),
                                
                                                  ],
                              ),
                            
                          ],
                        );
                       
                       }
                      }
                    ),
                  ),
          
                  // Container 3
                  Container(
                     padding:w<600 ?EdgeInsets.only(top: 30,left: 0) : EdgeInsets.only(top: 30,left: 190),
                    height: h,
                    width: w,
                    decoration: const BoxDecoration(
                      color: abuabu
                    ),
                    child: Column(
                      children: [
                        Text('PORTOFOLIO',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                        const Divider(height: 10,color: hitam),
                      ],
                    ),
                  ),
          
                  // Container 4
                  Container(
                     padding:w<600 ?EdgeInsets.only(top: 30,left: 0) : EdgeInsets.only(top: 30,left: 190),
                    height: h,
                    width: w,
                    decoration: const BoxDecoration(
                      color: abuabu
                    ),
                    child: LayoutBuilder(
                      builder: (context,cons) {
                        if(cons.maxWidth>600){
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('KEAHLIAN',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                              const Divider(height: 10,color: hitam),
                              Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('"Flutter Developer"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),), const SizedBox(width: 20,),
              Text('"Desain Grafis"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),), const SizedBox(width: 20,),
              Text('"Editing Video"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),),
        
            ],
          ),
        ),
        Text('Keahlian Aplikasi',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: hitam),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.network('https://drive.google.com/uc?id=1bTrz76prqHj4QPkSwK1Ydinf3vQBrBc1',height: 50,),
                  const SizedBox(height: 10,),
                  Text('Visual Studio Code',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),)
                ],
              ),
              const SizedBox(width: 20,),
              // Column(
              //   children: [
              //     Image.network('https://drive.google.com/uc?id=1Cl9RRViNtavssNhZODRt-JiZrAijEipL',height: 50,),
              //     const SizedBox(height: 10,),
              //     Text('Flutter',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),)
              //   ],
              // ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.network('https://drive.google.com/uc?id=14z2TnAKvi8ZMznR_2OtEc537xd9x0nlF',height: 50,),
                  const SizedBox(height: 10,),
                  Text('Adobe Premiere',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),)
                ],
              ),
              const SizedBox(width: 20,),
              Column(
                children: [
                  Image.network('https://drive.google.com/uc?id=1b8IH_j-x_WU7lYEzaQBEuv30eD6J7lhc',height: 50,),
                  const SizedBox(height: 10,),
                  Text('Adobe Photoshop',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),)
                ],
              ),
              const SizedBox(width: 20,),
              Column(
                children: [
                  Image.network('https://drive.google.com/uc?id=1N5Z_RX41TBhELaSoHhe9VFaSKM_TNM-2',height: 50,),
                  const SizedBox(height: 10,),
                  Text('Corel Draw',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),)
                ],
              ),
            ],
          ),
        ),
      
                            ],
                          );
                        }else{
                          return Text('data');
                        }
                      }
                    ),
                    // Konten Container 4
                  ),
          
                  // Container 5
                  Container(
                    padding:w<600 ?EdgeInsets.only(top: 30,left: 20) : EdgeInsets.only(top: 30,left: 190),
                    height: h,
                    width: w,
                    decoration: const BoxDecoration(
                      color: abuabu
                    ),
                    child: LayoutBuilder(
                      builder: (context,cons) {
                        if(cons.maxWidth > 1000){
                          return Column(
                             children: [
                               Text('KONTAK REFRENSI',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                              const Divider(height: 10,color: hitam),
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: w*0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Text('Jika Anda membutuhkan referensi langsung tentang saya, silakan hubungi mantan rekan dan teman yang pernah berkolaborasi dengan saya.',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: hitam),textAlign: TextAlign.center),
                                    ),
                                    SizedBox(
                                      width: w*0.4,
                                      height: MediaQuery.sizeOf(context).height*0.45,
                                      child: ListView.builder(
                                        itemCount: teman.length,
                                        itemBuilder: (context,index){
                                          return Container(
                                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                            margin: const EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: hitam,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Nama',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: putih),),
                                                    Text('No WA',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: putih),),
                                                  ],
                                                ),
                                                const SizedBox(width: 20,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(': ${teman[index].name}',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: putih),),
                                                    Text(': ${teman[index].noTelp}',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: putih),),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
                                      }),
                                    ),
                                  ],
                                ),
                              )
                            ],
 
                          );
                        }else{
                          return Column(
                             children: [
                               Text('KONTAK REFRENSI',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                              const Divider(height: 10,color: hitam),
                        Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                                      margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                                      alignment: Alignment.center,
                                      width: w*0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Text('Jika Anda membutuhkan referensi langsung tentang saya, silakan hubungi mantan rekan dan teman yang pernah berkolaborasi dengan saya.',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: hitam),textAlign: TextAlign.center),
                                    ),
                                    SizedBox(
                                      width: w*0.4,
                                      height: MediaQuery.sizeOf(context).height*0.45,
                                      child: ListView.builder(
                                        itemCount: teman.length,
                                        itemBuilder: (context,index){
                                          return Container(
                                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                            margin: w > 600 ? const EdgeInsets.all(15) : const EdgeInsets.symmetric(horizontal: 25,vertical: 5 ),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: hitam,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Nama',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: putih),),
                                                    Text('No WA',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: putih),),
                                                  ],
                                                ),
                                                const SizedBox(width: 20,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(': ${teman[index].name}',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: putih),),
                                                    Text(': ${teman[index].noTelp}',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: putih),),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
                                      }),
                                    ),
                                  ],
                                ),
                              
                            ],
 
                          );
                        }
                      }
                    ),
                    ),
          
                  // Container 6
                  Container(
                    padding:w<600 ?EdgeInsets.only(top: 30,left: 20) : EdgeInsets.only(top: 30,left: 190),
                    height: h,
                    width: w,
                    decoration: const BoxDecoration(
                      color: abuabu
                    ),
                    child: LayoutBuilder(
                      builder: (context,cons) {
                        if(cons.maxWidth>100){
                          return Column(
                            children: [
                               Text('KONTAK REFRENSI',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                              const Divider(height: 10,color: hitam),
                              Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width*0.35,
                                      child: Text('Jangan ragu untuk menghubungi saya jika Anda ingin berbicara lebih lanjut atau berkolaborasi. Saya selalu terbuka untuk diskusi, pertanyaan, atau peluang baru. Anda dapat menghubungi saya melalui email atau melalui media sosial.',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: hitam))),
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                                      decoration: BoxDecoration(
                                        color: putih,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                          color: hitam, // Warna garis
                                          width: 1.3,           // Lebar garis
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: hitam,
                                            offset: Offset(3,5),
                                            blurRadius: 0,
                                            spreadRadius: 1,
                                          )
                                        ]
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.email,
                                                  size: 34,
                                                  color: kuning5,
                                                ),
                                                const SizedBox(width: 15,),
                                                Text('adiyogtap@gmail.com',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: hitam)),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.call,
                                                  size: 34,
                                                  color: hitam,
                                                ),
                                                const SizedBox(width: 15,),
                                                Text('085723949679',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: hitam)),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.link,
                                                  size: 34,
                                                  color: hitam,
                                                ),
                                                const SizedBox(width: 15,),
                                                Text('@adiyogtap',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: hitam)),
                                                IconButton(onPressed: (){},
                                                icon: const Icon(
                                                  Icons.open_in_new,
                                                  size: 30,
                                                  color: hitam,
                                                ))
                                              ],
                                            )
                                          ],
                                        ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }else{
                          return Text('a');
                        }
                      }
                    ),
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
                color: kuning5,
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
                        child: Text('Tentang Saya',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam))),
                    ),
                    TextButton(
                      onPressed: () => scrollToContainer(1),
                      child: Text('Resume',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
                    ),
                    TextButton(
                      onPressed: () => scrollToContainer(2),
                      child: Text('Portofolio',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
                    ),
                    TextButton(
                      onPressed: () => scrollToContainer(3),
                      child: Text('Keahlian',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
                    ),
                    TextButton(
                      onPressed: () => scrollToContainer(4),
                      child: Text('Kontak Refrensi',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
                    ),
                    TextButton(
                      onPressed: () => scrollToContainer(5),
                      child: Text('Kontak Saya',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
                    ),
                  ],
                ),
              ),
            ),
          ) : w < 600 ? Positioned(
           bottom: 20,
           left: 5,
           right: 5,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
                width: w-10,
                height: 40,
                decoration: BoxDecoration(
                  color: kuning5,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(22)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      IconButton(
                      onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homePage(),)),
                      icon: Icon(Icons.home_rounded,color: hitam,)),
                    
                    IconButton(
                      onPressed: () => scrollToContainer(0),
                      icon: Icon(Icons.person,color: hitam,),
                    ),
                    IconButton(
                      onPressed: () => scrollToContainer(1),
                      icon: Icon(Icons.description,color: hitam,),
                    ),
                    IconButton(
                      onPressed: () => scrollToContainer(2),
                      icon: Icon(Icons.work,color: hitam,),
                    ),
                    IconButton(
                      onPressed: () => scrollToContainer(3),
                      icon: Icon(Icons.star,color: hitam,),
                    ),
                    IconButton(
                      onPressed: () => scrollToContainer(4),
                      icon: Icon(Icons.contacts,color: hitam,),
                    ),
                    IconButton(
                      onPressed: () => scrollToContainer(5),
                      icon: Icon(Icons.mail,color: hitam,),
                    ),
                  ],
                ),
              
            ),
          ) : Positioned(
            top: top,
            left: 10,
            child: Container(
              height: sizeBar,
              width: 160,
              decoration: BoxDecoration(
                color: kuning5,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(22)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    TextButton(
                    onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homePage(),)),
                    child: const Icon(Icons.home_rounded,color: putih,)),
                  
                  TextButton(
                    onPressed: () => scrollToContainer(0),
                    child:Text('Tentang Saya',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
                  ),
                  TextButton(
                    onPressed: () => scrollToContainer(1),
                    child: Text('Resume',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
                  ),
                  TextButton(
                    onPressed: () => scrollToContainer(2),
                    child: Text('Portofolio',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
                  ),
                  TextButton(
                    onPressed: () => scrollToContainer(3),
                    child: Text('Keahlian',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
                  ),
                  TextButton(
                    onPressed: () => scrollToContainer(4),
                    child: Text('Kontak Refrensi',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
                  ),
                  TextButton(
                    onPressed: () => scrollToContainer(5),
                    child: Text('Kontak Saya',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
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

class Teman {
  final String name;
  final String noTelp;


  Teman({
    required this.name,
    required this.noTelp,
  });
}

final List<Teman> teman = [

  Teman(
    name: 'Ocky Dimas',
    noTelp: '0895421431085'
  ),
  Teman(
    name: 'Rizky Anfasa',
    noTelp: '081215736202'
  ),
  Teman(
    name: 'Edo Septian',
    noTelp: '081373270499'
  ),
];
