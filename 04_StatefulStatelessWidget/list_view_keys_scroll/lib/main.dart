import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> nav = ['Список 1', 'Список 2'];
  final List fakeData = List.generate(100, (index) => index.toString());

  final data = [
    Image.network('https://picsum.photos/1200/501'),
    Image.network('https://picsum.photos/1200/502'),
    Image.network('https://picsum.photos/1200/503'),
    Image.network('https://picsum.photos/1200/504'),
    Image.network('https://picsum.photos/1200/505'),
    Image.network('https://picsum.photos/1200/506'),
    Image.network('https://picsum.photos/1200/507'),
    Image.network('https://picsum.photos/1200/508'),
    Image.network('https://picsum.photos/1200/509'),
    Image.network('https://picsum.photos/1200/510'),
  ];
  final data1 = [
    Image.network('https://picsum.photos/1200/501'),
    Image.network('https://picsum.photos/1200/502'),
    Image.network('https://picsum.photos/1200/503'),
    Image.network('https://picsum.photos/1200/504'),
    Image.network('https://picsum.photos/1200/505'),
    Image.network('https://picsum.photos/1200/506'),
    Image.network('https://picsum.photos/1200/507'),
    Image.network('https://picsum.photos/1200/508'),
    Image.network('https://picsum.photos/1200/509'),
    Image.network('https://picsum.photos/1200/510'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: nav
                .map((String item) => Tab(
                      text: item,
                    ))
                .toList(),
          ),
          title: Text('Homework example'),
        ),
        body: TabBarView(children: [
          Container(
            child: data1.first,
          ),
          ListFoto(data1: data1),
        ]),
      ),
    );
  }
}

class ListFoto extends StatelessWidget {
  const ListFoto({
    Key key,
    @required this.data1,
  }) : super(key: key);

  final List<Image> data1;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(child: data1[0]),
            Container(child: data1[1]),
            Container(child: data1[2]),
            Container(child: data1[3]),
            Container(child: data1[4]),
            Container(child: data1[5]),
          ],
        ),
      ),
    );
  }
}
