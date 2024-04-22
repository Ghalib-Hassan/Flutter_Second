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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Container(
          height: 100,
          width: 400,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 34, 218, 231),
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    blurRadius: 40,
                    spreadRadius: 20,
                    color: Color.fromARGB(255, 4, 38, 118))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Color(0xFFC26763),
                        borderRadius: BorderRadius.circular(40)),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Follow',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFFC26763)),
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Message',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Color(0xFFC26763),
                        borderRadius: BorderRadius.circular(40)),
                    child: Icon(
                      Icons.favorite_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Favourites',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),

      // backgroundColor: Colors.green,
      // body: Container(
      //   decoration: const BoxDecoration(
      //       color: Colors.red,
      //       borderRadius: BorderRadius.all(
      //         Radius.circular(50),
      //       ),
      //       boxShadow: [
      //         BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 1)
      //       ]),
      //   padding: const EdgeInsets.all(20),
      //   height: 100,
      //   width: 300,
      //   color: Colors.white,
      //   child: const Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Column(
      //         children: [
      //           Icon(Icons.notification_add),
      //           Text('Follow'),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           Icon(
      //             Icons.message,
      //           ),
      //           Text('Message'),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           Icon(
      //             Icons.favorite_outline,
      //           ),
      //           Text('Favourite'),
      //         ],
      //       )
      //     ],
      //   ),)
    );
  }
}
