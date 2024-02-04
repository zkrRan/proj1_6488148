import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tomoyo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Search Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "asset/logo.png",
                  height: 40,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(15), // Image radius
                          child: Image.asset('asset/profile.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('guragura', style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 280,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0XFFD7D3D0)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.search, color: Color(0XFF79716B)),
                          onPressed: () {
                            // Handle search button press here
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0XFFEA4958)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          // Add your desired action here when the button is pressed
                        },
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Image.asset(
                            'asset/high.png',
                            height: 20,
                          ),
                        ),
                      )),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 400,
                    height: 200,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color(0XFFFEF2F3),
                      border: Border.all(color: Color(0XFFEA4958)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          width: 120,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage('https://m1r.ai/9/r35vt.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Jujutsu Kaisen',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '呪術廻戦',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5),
                                RichText(
                                  overflow: TextOverflow.ellipsis,
                                  strutStyle: StrutStyle(fontSize: 10.0),
                                  maxLines: 5,
                                  text: TextSpan(
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w200),
                                    text:
                                        'อิตาโดริ ยูจิ นักเรียนมัธยมปลายที่มีสมรรถภาพทางร่างกายสูง วันหนึ่งเขาได้กลืนนิ้วต้องคำสาปเข้าไป “นิ้วเทพอสูรเรียวเมนสุคุนะ” เพื่อช่วยรุ่นพี่จาก “วัตถุต้องคำสาป” ทำให้คำสาป “สุคุนะ”กลายเป็นส่วนหนึ่งของเขา หลังจากนั้นเขาก็ได้เข้าโรงเรียนไสยเวทย์ เพื่อทำให้คำพูดสุดท้ายของคุณปู่ “จงช่วยเหลือผู้อื่น” เป็นจริง ยูจิจึงไม่หยุดที่จะต่อสู้กับ “คำสาป”',
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'asset/netflix.png',
                                      width: 30,
                                    ),
                                    Image.asset(
                                      'asset/billibilli.png',
                                      width: 30,
                                    ),
                                    Image.asset(
                                      'asset/wetv.png',
                                      width: 30,
                                    ),
                                    TextButton(
                                      style: ButtonStyle(
                                        minimumSize: MaterialStateProperty.all(
                                            Size(20, 6)),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color(0XFFEA4958)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        // Handle 'more' button press here
                                      },
                                      child: Text(
                                        'More',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                  color: Color(0xFFE7E5E4), // Set the color of the border
                  width: 2.0, // Set the width of the border
                ))),
                height: 80.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Add this to center the column content vertically
                        children: [
                          Image.asset("asset/home.png", height: 20),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              'HOME',
                              style: TextStyle(
                                color: Color(0xFF79716B),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("asset/schedule.png", height: 20),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              'SCHEDULE',
                              style: TextStyle(
                                color: Color(0xFF79716B),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("asset/onsearch.png", height: 20),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              'SEARCH',
                              style: TextStyle(
                                color: Color(0xFFEA4958),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("asset/more.png", height: 20),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              'MORE',
                              style: TextStyle(
                                color: Color(0xFF79716B),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
