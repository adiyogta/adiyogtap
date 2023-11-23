// ignore_for_file: camel_case_types

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';
import 'tentang_saya.dart';

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
    double textSize1 = (screenWidth < 600 && screenHeight < 600) ? 35.0 : (screenWidth < 840  && screenHeight < 840) ? 45.0 : (screenWidth > 840 && screenHeight > 840)?55.0 : screenWidth < 600 ? 35 : screenWidth < 840 ? 45 : screenWidth > 840 ?50 : screenHeight < 600 ? 55 : screenHeight < 840 ? 45 : screenHeight > 840 ? 35 : 45;
    double textSize2 = (screenWidth < 600 && screenHeight < 600) ? 20.0 : (screenWidth < 840  && screenHeight < 840) ? 30.0 : (screenWidth > 840 && screenHeight > 840)?40.0 : screenWidth < 600 ? 20 : screenWidth < 840 ? 30 : screenWidth > 840 ?40 : screenHeight < 600 ? 40 : screenHeight < 840 ? 30 : screenHeight > 840 ? 20 : 30;
    double textSize3 = (screenWidth < 600 && screenHeight < 600) ? 11.0 : (screenWidth < 840  && screenHeight < 840) ? 17.0 : (screenWidth > 840 && screenHeight > 840)?23.0 : screenWidth < 600 ? 11 : screenWidth < 840 ? 17 : screenWidth > 840 ?23 : screenHeight < 600 ? 23 : screenHeight < 840 ? 17 : screenHeight > 840 ?11 : 16;
    
    return SafeArea(
      child: LayoutBuilder(
        builder: (context,cons) {
    
              if (screenWidth < 600) {
                // Tampilan untuk layar sempit (misalnya smartphone)
                return Material(
                  child: Container(
                    color: abuabu,
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
                                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
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
                        InkWell(
                          onTap: () =>  Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const tentangSaya(),
                                ),
                              ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(color: hitam.withOpacity(0.3),blurRadius: 5,)],
                                color: biru,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(55)
                              ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Tentang Saya',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: putih)),
                                Icon(Icons.arrow_forward,size: textSize2-2,color: putih,)
                              ],
                            ),
                          ),
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
                                  child: CachedNetworkImage(
  imageUrl: 'https://drive.google.com/uc?id=1yPxuu_Dtev727uS1lYmuCkIK-nVTTC86',
  filterQuality: FilterQuality.medium,
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),
),
                                )
                        ]),
                    ),
                  )
                );
    
              } else {
                // Tampilan untuk layar lebar (misalnya tablet atau desktop)
                return Material(
                  child: Container(
                    color: abuabu,
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
                                       padding: screenWidth*0.5 < 600 ? const EdgeInsets.symmetric(horizontal: 20,vertical: 20) : const EdgeInsets.symmetric(horizontal: 50),
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
                                           InkWell(
                                            splashColor: kuning2,
                                            onTap: () =>  Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const tentangSaya(),
                                ),
                              ),
                                             child: Container(
                                                                     padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                                                                       decoration: BoxDecoration(
                                                                        boxShadow: [BoxShadow(color: hitam.withOpacity(0.3),blurRadius: 5,)],
                                                                         color: biru,
                                                                         shape: BoxShape.rectangle,
                                                                         borderRadius: BorderRadius.circular(55)
                                                                       ),
                                                                     child: Row(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                       children: [
                                                                         Text('Tentang Saya',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: putih)),
                                                                         Icon(Icons.arrow_forward,size: textSize2-2,color: putih,)
                                                                       ],
                                                                     ),
                                             ),
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
                  padding: screenWidth*0.5 < 600 ? const EdgeInsets.symmetric(horizontal: 20,vertical: 20) : const EdgeInsets.symmetric(horizontal: 50),
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
                      InkWell(
                        onTap: () =>  Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const tentangSaya(),
                                ),
                              ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                            decoration: BoxDecoration(
                              boxShadow: [BoxShadow(color: hitam.withOpacity(0.3),blurRadius: 5,)],
                              color: biru,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(55)
                            ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Tentang Saya',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: putih)),
                              Icon(Icons.arrow_forward,size: textSize2-2,color: putih,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: screenWidth<840?Alignment.center: Alignment.bottomCenter,
                width: MediaQuery.sizeOf(context).width*0.5,
                decoration: const BoxDecoration(
                  color: kuning5,
                ),
                child: CachedNetworkImage(
                  
  imageUrl: 'https://drive.google.com/uc?id=1yPxuu_Dtev727uS1lYmuCkIK-nVTTC86',
  filterQuality: FilterQuality.medium,
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),
),
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

