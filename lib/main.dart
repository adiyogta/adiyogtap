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
  final String data;


  MenuItem({
    required this.name,
    required this.data,
  });
}

class _tentangSayaState extends State<tentangSaya> {

final List<MenuItem> menuItems = [

  MenuItem(
    name: 'Tentang Saya',
    data: ','
  ),
  MenuItem(
    name: 'Resume',
    data: 'a'
  ),
  MenuItem(
    name: 'Portofolio',
    data: 'aa'
  ),
  MenuItem(
    name: 'Kontak Refrensi',
    data: 'a'
  ),
  MenuItem(
    name: 'Kontak Saya',
    data: 'a'
  ),
];

  @override
  Widget build(BuildContext context) {
  return Material(
      child: VerticalTabs(
        tabsWidth: 200,
        indicatorColor: kuning,
        selectedTabBackgroundColor: cream,
        contentScrollAxis: Axis.vertical,
        changePageCurve: Curves.bounceIn,
        tabs: menuItems.map((item) => tabs(item)).toList(),
        contents: menuItems.map((item) => tabsContent(item)).toList(),
    )
  );
  }
 Tab tabs(MenuItem item) {
  return Tab(
    child: Column(
      children: <Widget>[
        Text(
          item.name,style: GoogleFonts.nunito(fontStyle: FontStyle.normal,fontSize: 20,fontWeight: FontWeight.bold,color: cream)
        ),
      ],
    ),
  );
}
  Widget tabsContent(MenuItem item) {
    return Container(
      color: cream,
      child: Padding(
        padding: const EdgeInsets.only(right: 45,left: 45,top: 30,bottom: 30),
        child: Column(
          children: <Widget>[
            Text(
              item.name,
              style: GoogleFonts.sono(fontStyle: FontStyle.normal,fontSize: 60,fontWeight: FontWeight.w400,color: ijo),
            ),
            const Divider(
              height: 20,
              color: ijo,
            ),
            LayoutBuilder(builder: (context,cons){
              if(item.name==menuItems[0].name){
                return tentang();
              }else if(item.name==menuItems[1].name){
                return resume();
              }else if(item.name==menuItems[2].name){
                return Text('bb');
              }else if(item.name==menuItems[3].name){
                return Text('cc');
              }else{
                return Text('dd');
              }
            })
          ],
        ),
      ),
    );
  }
final ScrollController _scrollController = ScrollController();
  Container resume() => Container(
    width: MediaQuery.sizeOf(context).width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Education',style: GoogleFonts.sono(fontSize: 30, fontWeight: FontWeight.bold, color: ijo)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(23)
                ),
                child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('SD',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: ijo)),
                  Text('SDN 1 Beringin Raya Kemiling',style: GoogleFonts.sono(fontSize: 22, fontWeight: FontWeight.bold, color: ijo)),
                  Text('2004-2010',style: GoogleFonts.sono(fontSize: 25, fontWeight: FontWeight.bold, color: ijo)),
                
                ],
              ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(23)
                ),
                child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('SMP',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: ijo)),
                  Text('MTS AL-Fatah Natar',style: GoogleFonts.sono(fontSize: 22, fontWeight: FontWeight.bold, color: ijo)),
                  Text(' ',style: GoogleFonts.sono(fontSize: 22, fontWeight: FontWeight.bold, color: ijo)),
                  Text('2010-2013',style: GoogleFonts.sono(fontSize: 25, fontWeight: FontWeight.bold, color: ijo)),
                
                ],
              ),
              ),
               Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(23)
                ),
                child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('SMA',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: ijo)),
                  Text('MA AL-Fatah Natar',style: GoogleFonts.sono(fontSize: 22, fontWeight: FontWeight.bold, color: ijo)),
                  Text(' ',style: GoogleFonts.sono(fontSize: 22, fontWeight: FontWeight.bold, color: ijo)),
                  Text('2003-2016',style: GoogleFonts.sono(fontSize: 25, fontWeight: FontWeight.bold, color: ijo)),
                
                ],
              ),
              ),
               Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(23)
                ),
                child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Strata 1',style: GoogleFonts.sono(fontSize: 20, fontWeight: FontWeight.bold, color: ijo)),
                  Text('Universitas Muhammadiyah Yogyakarta',style: GoogleFonts.sono(fontSize: 22, fontWeight: FontWeight.bold, color: ijo)),
                  Text('2004-2010',style: GoogleFonts.sono(fontSize: 25, fontWeight: FontWeight.bold, color: ijo)),
                
                ],
              ),
              ),
            ],
          ),
        ),
        Text('Experience',style: GoogleFonts.sono(fontSize: 30, fontWeight: FontWeight.bold, color: ijo)),
      ],
    ),
  );


  Container tentang() => Container(
    width: MediaQuery.sizeOf(context).width,
    padding: const EdgeInsets.only(top: 30),
    child: Row(
      children: [
        Image.network('https://drive.google.com/uc?id=1ERQrTw7kQItWYOwBGdB5ReSEFhI6PuRt',height: MediaQuery.sizeOf(context).height*0.35,),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [                 
                  Text('Saya ',style: GoogleFonts.sono(fontSize: 30, fontWeight: FontWeight.w400, color: ijo)),
                  Text('Adi Yogta Putra ',style: GoogleFonts.sono(fontSize: 30, fontWeight: FontWeight.bold, color: ijo)),
                  Text('Desainer Grafis / Programmer',style: GoogleFonts.sono(fontSize: 30, fontWeight: FontWeight.w400, color: ijo)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text('Lulusan Sarjana Teknologi Informasi dari Universitas Muhammadiyah Yogyakarta tahun 2023. Saya memiliki minat yang mendalam dalam pemrograman dan desain grafis, khususnya dalam pengembangan aplikasi Flutter (Dart). Selama kuliah, saya pernah mengerjakan proyek freelance untuk mengembangkan sebuah aplikasi arisan online. Di samping itu, saya juga telah aktif dalam organisasi kampus, pernah menjadi Ketua Divisi Publikasi dan Dokumentasi tingkat jurusan maupun fakultas, yang memberikan saya kesempatan untuk mengasah kemampuan dalam bidang teknologi informasi dan publikasi. Saya juga memiliki pengalaman profesional selama 1 setengah tahun sebagai Editor Video dan Desainer Grafis di perusahaan Latifa Jewelry, di mana saya mengembangkan keterampilan editing video dan desain grafis yang kuat. Saya bersemangat untuk terus mengembangkan diri dan berkontribusi dalam dunia teknologi serta desain.',style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.normal, color: ijo),textAlign: TextAlign.justify,),
              ),
              
            ],
          ),
        ),
      ],
    ),
  );


}

enum IndicatorSide { start, end }

/// A vertical tab widget for flutter
class VerticalTabs extends StatefulWidget {
  final int initialIndex;
  final double tabsWidth;
  final double indicatorWidth;
  final IndicatorSide indicatorSide;
  final List<Tab> tabs;
  final List<Widget> contents;
  final TextDirection direction;
  final Color indicatorColor;
  final bool disabledChangePageFromContentView;
  final Axis contentScrollAxis;
  final Color selectedTabBackgroundColor;
  final Color tabBackgroundColor;
  final TextStyle selectedTabTextStyle;
  final TextStyle tabTextStyle;
  final Duration changePageDuration;
  final Curve changePageCurve;
  final Color tabsShadowColor;
  final double tabsElevation;
  final Function(int tabIndex)? onSelect;
  final Color? backgroundColor;

  const VerticalTabs(
      {Key? key,
      required this.tabs,
      required this.contents,
      this.tabsWidth = 200,
      this.indicatorWidth = 3,
      this.indicatorSide = IndicatorSide.end,
      this.initialIndex = 0,
      this.direction = TextDirection.ltr,
      this.indicatorColor = Colors.green,
      this.disabledChangePageFromContentView = false,
      this.contentScrollAxis = Axis.horizontal,
      this.selectedTabBackgroundColor = const Color(0x1100ff00),
      this.tabBackgroundColor = const Color(0xfff8f8f8),
      this.selectedTabTextStyle = const TextStyle(color: ijo),
      this.tabTextStyle = const TextStyle(color: cream),
      this.changePageCurve = Curves.easeInOutSine,
      this.changePageDuration = const Duration(milliseconds: 250),
      this.tabsShadowColor = Colors.black54,
      this.tabsElevation = 2.0,
      this.onSelect,
      this.backgroundColor})
      : assert(tabs.length == contents.length),
        super(key: key);

  @override
  _VerticalTabsState createState() => _VerticalTabsState();
}

class _VerticalTabsState extends State<VerticalTabs> with TickerProviderStateMixin {
  late int _selectedIndex;
  bool? _changePageByTapView;

  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<RelativeRect> rectAnimation;

  PageController pageController = PageController();

  List<AnimationController> animationControllers = [];

  ScrollPhysics pageScrollPhysics = const AlwaysScrollableScrollPhysics();

  @override
  void initState() {
    _selectedIndex = widget.initialIndex;
    for (int i = 0; i < widget.tabs.length; i++) {
      animationControllers.add(AnimationController(
        duration: const Duration(milliseconds: 400),
        vsync: this,
      ));
    }
    _selectTab(widget.initialIndex);

    if (widget.disabledChangePageFromContentView == true) pageScrollPhysics = const NeverScrollableScrollPhysics();

    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      pageController.jumpToPage(widget.initialIndex);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: widget.direction,
      child: Container(
        color: widget.backgroundColor ?? Theme.of(context).canvasColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Material(
                    elevation: widget.tabsElevation,
                    shadowColor: widget.tabsShadowColor,
                    shape: const BeveledRectangleBorder(),
                    child: Column(
                      children: [
                        Container(
                          height: widget.tabsWidth,
                          width: widget.tabsWidth,
                          decoration: BoxDecoration(
                            color: kuning,
                            image: DecorationImage(image: NetworkImage('https://drive.google.com/uc?id=1yPxuu_Dtev727uS1lYmuCkIK-nVTTC86'))
                          ),
                        ),
                        Container(
                          height: 20,
                          alignment: Alignment.center,
                          width: widget.tabsWidth,
                          color: ijo,
                          child: const Divider(
            height: 10,
            color: oren,
          ),
                        ),
                        Container(
                          color: ijo,
                          height: MediaQuery.sizeOf(context).height-widget.tabsWidth -20,
                          width: widget.tabsWidth,
                          child: ListView.builder(
                            itemCount: widget.tabs.length,
                            itemBuilder: (context, index) {
                              Tab tab = widget.tabs[index];

                              Alignment alignment = Alignment.centerLeft;
                              if (widget.direction == TextDirection.rtl) {
                                alignment = Alignment.centerRight;
                              }

                              Widget child;
                              if (tab.child != null) {
                                child = tab.child!;
                              } else {
                                child = Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(24)
                                  ),
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      children: <Widget>[

                                        (tab.text != null)
                                            ? Container(
                                              decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(24)
                                  ),
                                                width: widget.tabsWidth - 50,
                                                child: Text(
                                                  tab.text!,
                                                  softWrap: true,
                                                  style: _selectedIndex == index
                                                      ? TextStyle(color: ijo)
                                                      : TextStyle(color: cream),
                                                ))
                                            : Container(),
                                      ],
                                    ));
                              }

                              Color itemBGColor = ijo;
                              BoxShape s = BoxShape.rectangle;
                              BorderRadius b = BorderRadius.circular(0);
                              if (_selectedIndex == index) itemBGColor = oren;
                              if (_selectedIndex == index) s = BoxShape.rectangle;
                              if (_selectedIndex == index) b = BorderRadius.circular(0);

                              double? left, right;
                              if (widget.direction == TextDirection.rtl) {
                                left = ((widget.indicatorSide == IndicatorSide.end) ? 0 : null);
                                right = ((widget.indicatorSide == IndicatorSide.start) ? 0 : null);
                              } else {
                                right = ((widget.indicatorSide == IndicatorSide.end) ? 0 : null);
                                left = ((widget.indicatorSide == IndicatorSide.start) ? 0 : null);
                              }

                              return Stack(
                                children: <Widget>[
                                  Positioned(
                                    top: 2,
                                    bottom: 2,
                                    width: widget.indicatorWidth,
                                    left: left,
                                    right: right,
                                    child: ScaleTransition(
                                      child: Container(
                                        color: oren,
                                      ),
                                      scale: Tween(begin: 0.0, end: 1.0).animate(
                                        CurvedAnimation(
                                          parent: animationControllers[index],
                                          curve: Curves.elasticOut,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _changePageByTapView = true;
                                      setState(() {
                                        _selectTab(index);
                                      });

                                      pageController.animateToPage(index,
                                          duration: widget.changePageDuration, curve: widget.changePageCurve);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: s,
                                        borderRadius: b,
                                        color: itemBGColor,
                                      ),
                                      alignment: Alignment.center,
                                      padding:  EdgeInsets.symmetric(vertical: 15,horizontal: 5),
                                      child: child,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: PageView.builder(
                      scrollDirection: widget.contentScrollAxis,
                      physics: pageScrollPhysics,
                      onPageChanged: (index) {
                        if (_changePageByTapView == false || _changePageByTapView == null) {
                          _selectTab(index);
                        }
                        if (_selectedIndex == index) {
                          _changePageByTapView = null;
                        }
                        setState(() {});
                      },
                      controller: pageController,

                      // the number of pages
                      itemCount: widget.contents.length,

                      // building pages
                      itemBuilder: (BuildContext context, int index) {
                        return widget.contents[index];
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _selectTab(index) {
    _selectedIndex = index;
    for (AnimationController animationController in animationControllers) {
      animationController.reset();
    }
    animationControllers[index].forward();

    if (widget.onSelect != null) {
      widget.onSelect!(_selectedIndex);
    }
  }
}



