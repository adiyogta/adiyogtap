// ignore_for_file: camel_case_types, deprecated_member_use

import 'dart:ui';

import 'package:adiyogtap/main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_page.dart';
import 'list_kategori.dart';
import 'teman.dart';

class tentangSaya extends StatefulWidget {
  const tentangSaya({super.key});

  @override
  State<tentangSaya> createState() => _tentangSayaState();
}

class _tentangSayaState extends State<tentangSaya> {
  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollEducation = ScrollController();
  final ScrollController _scrollEducation2 = ScrollController();
  
  IconData icon = Icons.arrow_forward_ios;
  String link = '0' ;
    String a ='assets/bg/1.png';
int selectedButton = 0; // -1 berarti tidak ada yang dipilih
  get h => MediaQuery.sizeOf(context).height;
get w => MediaQuery.sizeOf(context).width;

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController2.dispose();
    _scrollEducation.dispose();
    super.dispose();
  }

  void _launchURL(String url) async {
   if (await canLaunch('https://drive.google.com/file/d/$url/preview')) {
      await launch('https://drive.google.com/file/d/$url/preview');
   } else {
      throw 'Could not launch https://drive.google.com/file/d/$url/preview';
   }
  }

  void _launchURLCV() async {
    if (await canLaunch('https://drive.google.com/uc?id=1dW2zT2fluL1g5b3b9IYrQ7mLaMqnb17j')) {
      await launch('https://drive.google.com/uc?id=1dW2zT2fluL1g5b3b9IYrQ7mLaMqnb17j');
    } else {
      throw 'Could not launch Download CV';
    }
  }
  
  void scrollToContainer(int index) {
    // Menggulirkan ke Container tertentu berdasarkan indeks
    num scrollPosition = index * h;

    List <bool> isSelected = [false,true,false,false,false,false,false];

    _scrollController.animateTo(
      scrollPosition as double,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInQuint,
    );
    Future.delayed(const Duration(milliseconds: 500), () {
  setState(() {
    // Setel isSelected[index] menjadi true dan isSelected lainnya menjadi false
    for (int i = 0; i < isSelected.length; i++) {
      isSelected[i] = i == index;
    }
    a = 'assets/bg/${index + 1}.png';
    
  });
});

  }

  void scrollToContainer2(int index) {
    // Menggulirkan ke Container tertentu berdasarkan indeks
    num scrollPosition2 = w<600? index * w:index *(w-200); // Sesuaikan dengan posisi vertikal yang diinginkan
    _scrollController2.animateTo(
      scrollPosition2 as double,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOutQuint,
    );
    setState(() {
      selectedButton = index;
    });
  }

  void scrollEducation2(int index) {
   num scrollEdu2 = index * (w); // Sesuaikan dengan posisi vertikal yang diinginkan
    _scrollEducation2.animateTo(
      scrollEdu2 as double,
      duration: const Duration(milliseconds: 400),
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
    duration: const Duration(milliseconds: 400),
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
    double textSize1 = (screenWidth < 600 && screenHeight < 600) ? 35.0 : (screenWidth < 840  && screenHeight < 840) ? 45.0 : (screenWidth > 840 && screenHeight > 840)?55.0 : screenWidth < 600 ? 35 : screenWidth < 840 ? 45 : screenWidth > 840 ?50 : screenHeight < 600 ? 55 : screenHeight < 840 ? 45 : screenHeight > 840 ? 35 : 45;
    double textSize2 = (screenWidth < 600 && screenHeight < 600) ? 20.0 : (screenWidth < 840  && screenHeight < 840) ? 30.0 : (screenWidth > 840 && screenHeight > 840)?40.0 : screenWidth < 600 ? 20 : screenWidth < 840 ? 30 : screenWidth > 840 ?40 : screenHeight < 600 ? 40 : screenHeight < 840 ? 30 : screenHeight > 840 ? 20 : 30;
    double textSize3 = (screenWidth < 600 && screenHeight < 600) ? 11.0 : (screenWidth < 840  && screenHeight < 840) ? 17.0 : (screenWidth > 840 && screenHeight > 840)?23.0 : screenWidth < 600 ? 11 : screenWidth < 840 ? 17 : screenWidth > 840 ?23 : screenHeight < 600 ? 23 : screenHeight < 840 ? 17 : screenHeight > 840 ?11 : 16;

    double top = h * 0.15;
    double sizeBar = h * 0.7;

    return Material(
      color: abuabu,
      child: Container(
         decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0,1],
                        colors: [putih.withOpacity(0.15),Colors.lightBlue.withOpacity(0.15)])
                    ),
        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 80.0),
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
                        padding:w<600 ?const EdgeInsets.only(top: 30,left: 0) : const EdgeInsets.only(top: 15,left: 190),
                        height: h,
                        width: w,
                       
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
                                          CachedNetworkImage(
  imageUrl: 'https://drive.google.com/uc?id=1ERQrTw7kQItWYOwBGdB5ReSEFhI6PuRt',
  filterQuality: FilterQuality.medium,
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),height: MediaQuery.sizeOf(context).height*0.35,
),
                                         
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
                                                  child: Text('Saya adalah lulusan Teknologi Informasi di Universitas Muhammadiyah Yogyakarta tahun 2023, dengan minat dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter. Saya memiliki pengalaman dalam proyek freelance aplikasi arisan online, kepemimpinan organisasi kampus sebagai Ketua Divisi Publikasi dan Dokumentasi, serta pengalaman profesional selama 1,5 tahun sebagai Editor Video dan Desainer Grafis di Latifa Jewelry. Saya bersemangat untuk terus berkembang dalam dunia teknologi dan desain.',style: GoogleFonts.montserrat(fontSize: textSize3-2, fontWeight: FontWeight.normal, color: hitam),textAlign: TextAlign.left,),
                                                ),
                                                 const SizedBox(height: 20,),
                                                  TextButton(
                                                    onPressed: (){
                                                      _launchURLCV();
                                                    },
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
                                                    child: Text('Saya adalah lulusan Teknologi Informasi di Universitas Muhammadiyah Yogyakarta tahun 2023, dengan minat dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter. Saya memiliki pengalaman dalam proyek freelance aplikasi arisan online, kepemimpinan organisasi kampus sebagai Ketua Divisi Publikasi dan Dokumentasi, serta pengalaman profesional selama 1,5 tahun sebagai Editor Video dan Desainer Grafis di Latifa Jewelry. Saya bersemangat untuk terus berkembang dalam dunia teknologi dan desain.',style: GoogleFonts.montserrat(fontSize: textSize3-2, fontWeight: FontWeight.normal, color: hitam),textAlign: TextAlign.left,),
                                                  ),
                                                      const SizedBox(height: 20,),
                                                  TextButton(
                                                    onPressed: (){_launchURLCV();},
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
                              }else if(cons.maxHeight<600){
                                return Column(
                                  children: [
                                    Text('TENTANG SAYA',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.w400,color: hitam)),
                                    const Divider(
                                      height: 10,
                                      color: hitam,
                                      ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            CachedNetworkImage(
  imageUrl: 'https://drive.google.com/uc?id=1ERQrTw7kQItWYOwBGdB5ReSEFhI6PuRt',
  filterQuality: FilterQuality.medium,
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),height: MediaQuery.sizeOf(context).height*0.4,
),
                                            TextButton(
                                              onPressed: (){_launchURLCV();},
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
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [                 
                                                Text('Saya ',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.w400, color: hitam)),
                                                Text('Adi Yogta Putra ',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                ],
                                              ),
                                              Text('Desainer Grafis / Programmer',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.w400, color: hitam)),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: putih.withOpacity(0.7),
                                                  border: Border.all(color: putih,width: 2),
                                                  shape: BoxShape.rectangle,
                                                  borderRadius: BorderRadius.circular(20)
                                                ),
                                                margin: const EdgeInsets.only(top: 5,left: 5,right: 20),
                                                padding: const EdgeInsets.only(top: 10,left: 15,right: 15,bottom: 10),
                                                child: Text('Saya adalah lulusan Teknologi Informasi di Universitas Muhammadiyah Yogyakarta tahun 2023, dengan minat dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter. Saya memiliki pengalaman dalam proyek freelance aplikasi arisan online, kepemimpinan organisasi kampus sebagai Ketua Divisi Publikasi dan Dokumentasi, serta pengalaman profesional selama 1,5 tahun sebagai Editor Video dan Desainer Grafis di Latifa Jewelry. Saya bersemangat untuk terus berkembang dalam dunia teknologi dan desain.',style: GoogleFonts.montserrat(fontSize: textSize3-2, fontWeight: FontWeight.normal, color: hitam),textAlign: TextAlign.justify,),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                                   
                                                 
                                  ],
                                );
                              } else{
                                return Column(
                                  children: [
                                    Text('TENTANG SAYA',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                                    const Divider(
                                      height: 10,
                                      color: hitam,
                                      ),
                                      CachedNetworkImage(
  imageUrl: 'https://drive.google.com/uc?id=1ERQrTw7kQItWYOwBGdB5ReSEFhI6PuRt',
  filterQuality: FilterQuality.medium,
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),height: MediaQuery.sizeOf(context).height*0.20,
),
                                     Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [                 
                                      Text('Saya ',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.w400, color: hitam)),
                                      Text('Adi Yogta Putra ',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                      ],
                                    ),
                                    Text('Desainer Grafis / Programmer',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.w400, color: hitam)),
                                     Container(
                                      decoration: BoxDecoration(
                                        color: putih.withOpacity(0.7),
                                        border: Border.all(color: putih,width: 2),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                                    padding: const EdgeInsets.only(top: 10,left: 15,right: 15,bottom: 10),
                                                    child: Text('Saya adalah lulusan Teknologi Informasi di Universitas Muhammadiyah Yogyakarta tahun 2023, dengan minat dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter. Saya memiliki pengalaman dalam proyek freelance aplikasi arisan online, kepemimpinan organisasi kampus sebagai Ketua Divisi Publikasi dan Dokumentasi, serta pengalaman profesional selama 1,5 tahun sebagai Editor Video dan Desainer Grafis di Latifa Jewelry. Saya bersemangat untuk terus berkembang dalam dunia teknologi dan desain.',style: GoogleFonts.montserrat(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam),textAlign: TextAlign.left,),),
                                                   
                                                  TextButton(
                                                    onPressed: (){_launchURLCV();},
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
                //         // Konten Container 1
                      ),
              
                      // Container 2
                      Container(
                        padding:w<600 ?const EdgeInsets.only(top: 30,left: 0) : const EdgeInsets.only(top: 15,left: 190),
                        height: h,
                        width: w,
                       
                        child: LayoutBuilder(
                          builder: (context,cons) {
                           if(cons.maxWidth>600){
                             return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('RESUME',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                                const Divider(height: 10,color: hitam,),
                                Container(
                                  width: w,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Pendidikan',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                      const SizedBox(height: 20,),
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
                                                    width: w*0.4,
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
                                                      Text('SMA',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                                                      Text('MA AL-Fatah Natar Lampung',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                      Text('2013-2016',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                    
                                                    ],
                                                  ),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                    width: w*0.4,
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
                                                      Text('S1 Teknologi Informasi',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('April 2019 - Agustus 2019',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                  TextButton(onPressed: (){
                                    showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title:  Text('Programmer Magang Di Perusahaan Monte Moria Indonesia',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                  content: Text('Membuat website admin restaurant berbasis POST dengan beranggotakan 2 orang dengan platform Angular JS',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Tutup dialog saat tombol ditekan
                        Navigator.of(context).pop();
                      },
                      child: const Text('Tutup'),
                    ),
                  ],
                );
              },
            );
                                  },
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
                               Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Februari 2021 - April 2021',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                    TextButton(onPressed: (){
                                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title:  Text('Membuat Project Aplikasi Arisan',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                  content: Text('Dalam tim 3 orang, saya berperan sebagai programmer menggunakan framework Flutter untuk mengembangkan aplikasi arisan berbasis Android dengan fungsi CRUD.',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Tutup dialog saat tombol ditekan
                        Navigator.of(context).pop();
                      },
                      child: const Text('Tutup'),
                    ),
                  ],
                );
              },
            );
                                    },
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Juli 2021 - Desember 2022',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                  TextButton(onPressed: (){
                                    showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title:  Text('Editor Video Perusahaan Latifa Jewelry',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                  content: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mengambil gambar dan video cincin untuk bahan membuat video',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                        Text('Membuat konten Desain dan video harian dengan isi berupa promosi penjualan cincin',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Tutup dialog saat tombol ditekan
                        Navigator.of(context).pop();
                      },
                      child: const Text('Tutup'),
                    ),
                  ],
                );
              },
            );
                                  },
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
                                        ),
                                    const SizedBox(height:5,),
                                    Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('Pendidikan',style: GoogleFonts.sono(fontSize: textSize3+2, fontWeight: FontWeight.bold, color: hitam)),
                                      Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(5),
                                          color: hitam
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                           TextButton(onPressed: () => scrollEducation2(0), child: Text('SMA',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: putih),)),
                                           TextButton(onPressed: () => scrollEducation2(1), child: Text('STRATA 1',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: putih),)),
                                          ],
                                        ),
                                      ),
                                          SingleChildScrollView(
                                            controller: _scrollEducation2,
                                            scrollDirection: Axis.horizontal,
                                            child: IntrinsicHeight(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                 Container(
                                                    margin: const EdgeInsets.only(right: 20,left: 20),
                                                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                              width: w-40,
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
                                                      Text('SMA',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                                                      Text('MA AL-Fatah Natar Lampung',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                      Text('2013-2016',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                    
                                                    ],
                                                  ),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(right: 20,left: 20),
                                                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                              width: w-40,
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
                                                      Text('S1 Teknologi Informasi',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                                                      Text('Universitas Muhammadiyah Yogyakarta',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.normal, color: hitam)),
                                                      Text('2016-2023',style: GoogleFonts.sono(fontSize: textSize3, fontWeight: FontWeight.bold, color: hitam)),
                                                    ],
                                                  ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                      const SizedBox(height: 20,),
                                      Text('Pengalaman',style: GoogleFonts.sono(fontSize: textSize3+2, fontWeight: FontWeight.bold, color: hitam)),
                                      const SizedBox(height: 20,),
                                      IntrinsicHeight(
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(bottom: 10, left: 20,right: 20),
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
                                                Text('Programmer Magang Di Perusahaan Monte Moria Indonesia',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('April 2019 - Agustus 2019',style: GoogleFonts.sono(fontSize: textSize3-2, fontWeight: FontWeight.bold, color: hitam)),
                                                    IconButton(
                                                    onPressed: (){
                                                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title:  Text('Programmer Magang Di Perusahaan Monte Moria Indonesia',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                  content: Text('Membuat website admin restaurant berbasis POST dengan beranggotakan 2 orang dengan platform Angular JS',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Tutup dialog saat tombol ditekan
                        Navigator.of(context).pop();
                      },
                      child: const Text('Tutup'),
                    ),
                  ],
                );
              },
            );
                                                    },
                                                    icon: Container(
                                                      decoration: const BoxDecoration(
                                                        color: putih,
                                                        shape: BoxShape.rectangle
                                                      ),
                                                      child: const Icon(Icons.open_in_full,)))
                                                  ],
                                                ),
                                              
                                              ],
                                            ),
                                            ),
                                            Container(
                                                      margin: const EdgeInsets.only(bottom: 10, left: 20,right: 20),
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
                                                        Text('Membuat Project Aplikasi Arisan',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text('Februari 2021 - April 2021',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                                                             IconButton(
                                                    onPressed: (){
                                                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title:  Text('Membuat Project Aplikasi Arisan',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                  content: Text('Dalam tim 3 orang, saya berperan sebagai programmer menggunakan framework Flutter untuk mengembangkan aplikasi arisan berbasis Android dengan fungsi CRUD.',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Tutup dialog saat tombol ditekan
                        Navigator.of(context).pop();
                      },
                      child: const Text('Tutup'),
                    ),
                  ],
                );
              },
            );
                                                    },
                                                    icon: Container(
                                                      decoration: const BoxDecoration(
                                                        color: putih,
                                                        shape: BoxShape.rectangle
                                                      ),
                                                      child: const Icon(Icons.open_in_full,)))
                                                          ],
                                                        ),
                                                      
                                                      ],
                                                    ),
                                                  ),
                                                  ),
                                            Container(
                                                     margin: const EdgeInsets.only(left: 20,right: 20),
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
                                                      Text('Editor Video Perusahaan Latifa Jewelry',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text('Juli 2021 - Desember 2022',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                                                           IconButton(
                                                    onPressed: (){
                                                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title:  Text('Editor Video Perusahaan Latifa Jewelry',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                  content: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mengambil gambar dan video cincin untuk bahan membuat video',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                        Text('Membuat konten Desain dan video harian dengan isi berupa promosi penjualan cincin',style: GoogleFonts.sono(fontSize: textSize3-1, fontWeight: FontWeight.bold, color: hitam)),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Tutup dialog saat tombol ditekan
                        Navigator.of(context).pop();
                      },
                      child: const Text('Tutup'),
                    ),
                  ],
                );
              },
            );
                                                    },
                                                    icon: Container(
                                                      decoration: const BoxDecoration(
                                                        color: putih,
                                                        shape: BoxShape.rectangle
                                                      ),
                                                      child: const Icon(Icons.open_in_full,)))
                                                        ],
                                                      ),
                                                    
                                                    ],
                                                  ),
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
                         padding:w<600 ?const EdgeInsets.only(top: 30,left: 0) : const EdgeInsets.only(top: 15,left: 190),
                        height: h,
                        width: w,
                       
                        child: Column(
                          children: [
                            Text('PORTOFOLIO',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                            const Divider(height: 10,color: hitam),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(kategori.length, (index) {
                             
                              return TextButton(
                                onPressed: selectedButton == index ? null : () => scrollToContainer2(index),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: selectedButton == index ? kuning4 : abuabu,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    kategori[index].nama,
                                    style: GoogleFonts.nunito(
                                      fontStyle: FontStyle.normal,
                                      fontSize: textSize3 - 2,
                                      fontWeight: FontWeight.w400,
                                      color: hitam,
                                    ),
                                  ),
                                ),
                              );
                            }),
                            ),
                          const SizedBox(height: 5,),
                          Expanded(
                            child: SingleChildScrollView(
                              controller: _scrollController2,
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(kategori.length, (index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                width: w<600? w-20:w-220,
                                child:kategori[index].listKategori.isEmpty ? const Text('Tidak Ada Data') : GridView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: kategori[index].listKategori.length,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: w < 600 ? 2 : 6,
                                    mainAxisSpacing: 10.0,
                                    crossAxisSpacing: 10.0,
                                    childAspectRatio:3 / 2.9,
                                  ),
                                  itemBuilder: (context,inde){
                                    var list = kategori[index].listKategori;
                                    return LayoutBuilder(
                                      builder: (context, cons) {
                                        return Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: kuning3,
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: const [BoxShadow(blurRadius: 2,color: abuabu,spreadRadius: 3,offset: Offset(2, 3))]
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              // index== 3 ? 
                                              // WebView(
                                              //   initialUrl: list[inde].url, // Ganti dengan URL yang diinginkan
                                              //   javascriptMode: JavascriptMode.unrestricted,
                                              // ):
                                              CachedNetworkImage(
                                                imageUrl:index ==4 ? 'https://drive.google.com/thumbnail?id=${list[inde].url}' : list[inde].url,
                                                fit: BoxFit.fitWidth,
                                                filterQuality: FilterQuality.low,
                                                placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
                                                errorWidget: (context, url, error) => const Icon(Icons.error),
                                                height: cons.maxHeight*0.8,
                                                width: cons.maxWidth,
                                                imageBuilder: (context, imageProvider) => Container(
                                                  margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10), // Ganti dengan besar radius yang diinginkan
                                                    image: DecorationImage(
                                                      image: imageProvider,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                
                                                height: cons.maxHeight*0.2,
                                                width: cons.maxWidth,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Text(
                                                    list[inde].nama,
                                                    style: GoogleFonts.nunito(
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: textSize3 - 4,
                                                    fontWeight: FontWeight.w400,
                                                    color: hitam,
                                                  ),),
                                                  TextButton(onPressed: (){
                                                    if(index==4){
                                                      _launchURL(list[inde].url);
                                                    }else{
                                                      showDialog(
                                                      context: context,
                                                      builder: (BuildContext context) {
                                                        return AlertDialog(
                                                          title: Column(
                                                            children: [
                                                              Text(list[inde].detal,style: GoogleFonts.nunito(
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: textSize3 - 2,
                                                    fontWeight: FontWeight.w400,
                                                    color: hitam)),
                                                    const Divider(
                                                    height: 10,
                                                    color: kuning5,
                                                    ),
                                                  index==0 && list[inde].link!=null? Text('Link Github : ${list[inde].link}') : index==2 && list[inde].link!=null? Text('Link Figma : ${list[inde].link}') :Container()
                                                            ],
                                                          ),
                                                          content: CachedNetworkImage(
                                                imageUrl:list[inde].url,
                                                filterQuality: FilterQuality.medium,
                                                placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
                                                errorWidget: (context, url, error) => const Icon(Icons.error),
                                               
                                              ),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () {
                                                                Navigator.of(context).pop();
                                                              },
                                                              child: Text('Close',style: GoogleFonts.nunito(
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: textSize3 - 4,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red,),)
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                   
                                                    }
                                                     
                                                  }, child:Text('Detail',style: GoogleFonts.nunito(
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: textSize3 - 4,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue,)))
                                                ],
                                              )),
                                            ],
                                          ));
                                      }
                                    );
                                  }),
                              );
                            }),
                              ),
                            ),
                          ),
                          ],
                        ),
                      ),
              
                      // Container 4
                      Container(
                         padding:w<600 ?const EdgeInsets.only(top: 30,left: 0) : const EdgeInsets.only(top: 15,left: 190),
                        height: h,
                        width: w,
                       
                        child: LayoutBuilder(
                          builder: (context,cons) {
                            if(cons.maxWidth>600){
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Kemampuan',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                                  const Divider(height: 10,color: hitam),
                                  Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('"Flutter / Dart"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),), const SizedBox(width: 20,),
                      Text('"Desain Grafis"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),), const SizedBox(width: 20,),
                      Text('"Editing Video"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),),
                      
            
                    ],
                  ),
                  Row(
              mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('"Editing Foto"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),),
                      Text('"Animasi Motion Grafis"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),),
                    ],
                  ),
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
                      CachedNetworkImage(
  imageUrl: 'https://drive.google.com/uc?id=1bTrz76prqHj4QPkSwK1Ydinf3vQBrBc1',
  filterQuality: FilterQuality.medium,
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),height: 50,
),
                       const SizedBox(height: 10,),
                      Text('Visual Studio Code',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          CachedNetworkImage(
  imageUrl: 'https://drive.google.com/uc?id=14z2TnAKvi8ZMznR_2OtEc537xd9x0nlF',
  filterQuality: FilterQuality.medium,
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),height: 50,
),
                         const SizedBox(height: 10,),
                          Text('Adobe Premiere',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),)
                        ],
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        children: [
                          CachedNetworkImage(
                            filterQuality: FilterQuality.medium,
  imageUrl: 'https://drive.google.com/uc?id=1b8IH_j-x_WU7lYEzaQBEuv30eD6J7lhc',
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),height: 50,
),
                          const SizedBox(height: 10,),
                          Text('Adobe Photoshop',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),)
                        ],
                      ),
                     
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          CachedNetworkImage(
                            filterQuality: FilterQuality.medium,
  imageUrl: 'https://drive.google.com/uc?id=1N5Z_RX41TBhELaSoHhe9VFaSKM_TNM-2',
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),height: 50,
),
                          const SizedBox(height: 10,),
                          Text('Corel Draw',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),)
                        ],
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        children: [
                          CachedNetworkImage(
                            filterQuality: FilterQuality.medium,
  imageUrl: 'https://drive.google.com/uc?id=1dYaOSfagYLArEOS42HJry901_KITnE5w',
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),height: 50,
),
                          const SizedBox(height: 10,),
                          Text('After Effects',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),)
                        ],
                      ),
                    ],
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
                                   Text('Kemampuan',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                                  const Divider(height: 10,color: hitam),
                                  Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('"Flutter Developer"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3+2,fontWeight: FontWeight.bold,color: hitam),), const SizedBox(width: 20,),
                  Text('"Desain Grafis"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3+2,fontWeight: FontWeight.bold,color: hitam),), const SizedBox(width: 20,),
                  Text('"Editing Video"',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3+2,fontWeight: FontWeight.bold,color: hitam),),
                ],
              ),
            ),
            Text('Keahlian Aplikasi',style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: textSize2,fontWeight: FontWeight.bold,color: hitam),),
            const SizedBox(height: 10,),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                  itemCount: 5,
                  physics: h<500?null:const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: w<500 ?2:4, // Jumlah kolom dalam grid
                mainAxisSpacing: 10.0, // Spasi antar elemen secara vertikal
                crossAxisSpacing: 10.0,
                childAspectRatio: w<500 ?3/2:1/1
                    ),
                    itemBuilder: (BuildContext context, int index){
                List<String> imageUrls = [
                  'https://drive.google.com/uc?id=1bTrz76prqHj4QPkSwK1Ydinf3vQBrBc1',
                  'https://drive.google.com/uc?id=14z2TnAKvi8ZMznR_2OtEc537xd9x0nlF',
                  'https://drive.google.com/uc?id=1b8IH_j-x_WU7lYEzaQBEuv30eD6J7lhc',
                  'https://drive.google.com/uc?id=1N5Z_RX41TBhELaSoHhe9VFaSKM_TNM-2',
                  'https://drive.google.com/uc?id=1dYaOSfagYLArEOS42HJry901_KITnE5w',
                ];
                      
                List<String> titles = [
                  'Visual Studio Code',
                  'Adobe Premiere',
                  'Adobe Photoshop',
                  'Corel Draw',
                  'After Effects'
                ];
                      
                return Container(
                  decoration: BoxDecoration(
                    color: putih.withOpacity(0.55),
                    border: Border.all(color: putih,width: 2),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: kuning5.withOpacity(0.7),
                      blurRadius: 5)]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       CachedNetworkImage(
                        filterQuality: FilterQuality.medium,
  imageUrl: imageUrls[index],
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: putih,value: 2,)),
  errorWidget: (context, url, error) => const Icon(Icons.error),height: 50,
),
                     
                      const SizedBox(height: 10),
                      Text(
                        titles[index],
                        style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.bold,color: hitam),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
                    }),
              ),
            ),
                               ],
                              );
                            }
                          }
                        ),
                        // Konten Container 4
                      ),
              
                      // Container 5
                      Container(
                        padding:w<600 ?const EdgeInsets.only(top: 30,left: 0) : const EdgeInsets.only(top: 15,left: 190),
                        height: h,
                        width: w,
                       
                        child: LayoutBuilder(
                          builder: (context,cons) {
                            if(cons.maxWidth > 840){
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
                                   Text('KONTAK REFRENSI',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam),textAlign: TextAlign.center),
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
                                            color: putih.withOpacity(0.75),
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all(color: putih,width: 1.5)
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
                          padding:w<600 ?const EdgeInsets.only(top: 30,left: 0) : const EdgeInsets.only(top: 15,left: 190),
                        height: h,
                        width: w,
                       
                        child: LayoutBuilder(
                          builder: (context,cons) {
                            if(cons.maxWidth>600){
                              return Column(
                                children: [
                                   Text('KONTAK SAYA',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
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
                                            boxShadow: const [
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
                              return Column(
                                children: [
                                   Text('KONTAK SAYA',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize1,fontWeight: FontWeight.w400,color: hitam)),
                                  const Divider(height: 10,color: hitam),
                               Padding(
                                 padding: const EdgeInsets.all(15),
                                 child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                                            decoration: BoxDecoration(
                                              color: putih.withOpacity(0.75),
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(color: putih,width: 2)
                                            ),
                                            width: w,
                                            child: Text('Jangan ragu untuk menghubungi saya jika Anda ingin berbicara lebih lanjut atau berkolaborasi. Saya selalu terbuka untuk diskusi, pertanyaan, atau peluang baru. Anda dapat menghubungi saya melalui email atau melalui media sosial.',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: textSize3,fontWeight: FontWeight.normal,color: hitam))),
                                          Container(
                                            margin: const EdgeInsets.only(top: 15),
                                            padding:  const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                                            decoration: BoxDecoration(
                                              color: putih,
                                              shape: BoxShape.rectangle,
                                              borderRadius: BorderRadius.circular(25),
                                              border: Border.all(
                                                color: hitam, // Warna garis
                                                width: 1.3,           // Lebar garis
                                              ),
                                              boxShadow: const [
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
                top: h*0.05,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 4),
                  height: sizeBar+(h*0.2),
                  width: 165,
                  decoration: BoxDecoration(
                    color: kuning5,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                          TextButton(
                          onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homePage(),)),
                          child: const Icon(Icons.home_rounded,color: putih,)),
                        
                        TextButton(
                          onPressed: () => scrollToContainer(0),
                          child: Text('Tentang Saya',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
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
                          child: Text('Kemampuan',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
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
                  margin: const EdgeInsets.symmetric(horizontal: 20),
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
                          onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homePage(),)),
                          icon: const Icon(Icons.home_rounded,color: hitam,)),
                        
                        IconButton(
                          onPressed: () => scrollToContainer(0),
                          icon: const Icon(Icons.person,color: hitam,),
                        ),
                        IconButton(
                          onPressed: () => scrollToContainer(1),
                          icon: const Icon(Icons.description,color: hitam,),
                        ),
                        IconButton(
                          onPressed: () => scrollToContainer(2),
                          icon: const Icon(Icons.work,color: hitam,),
                        ),
                        IconButton(
                          onPressed: () => scrollToContainer(3),
                          icon: const Icon(Icons.star,color: hitam,),
                        ),
                        IconButton(
                          onPressed: () => scrollToContainer(4),
                          icon: const Icon(Icons.contacts,color: hitam,),
                        ),
                        IconButton(
                          onPressed: () => scrollToContainer(5),
                          icon: const Icon(Icons.mail,color: hitam,),
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
                        onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homePage(),)),
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
                        child: Text('Kemampuan',style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: hitam)),
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
        ),
      ),
    );
  }
}
