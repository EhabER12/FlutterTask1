import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String s = 'Follow';
  Color c = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://wallpaper.dog/large/20522099.jpg"), fit: BoxFit.contain)),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.black26],
                    begin: Alignment.bottomRight,
                    )),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(3.0),
              child: Text(
                'Sangi',
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  'Bounty: 320MB',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Pacifico'),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Straw Hats Third man',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Pacifico'),
                )
              ],
            ),
            const Text(
              'Vinsmoke Sanji, also known as "Black Foot" Sanji, is a fictional character in the One Piece franchise created by Eiichiro Oda. A native to the North Blue, Sanji grew up as part of the Vinsmoke family under his father Vinsmoke Judge, king of the Germa Kingdom, and mother Vinsmoke Sora',
              style: TextStyle(

                  fontSize: 20,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  height: 1.5),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: c,

                  maximumSize: Size(MediaQuery.of(context).size.width, 40), minimumSize: Size(MediaQuery.of(context).size.width, 40)),
              onPressed: () {
                setState(() {
                  c=Colors.blue;
                  s='Thank you';
                });
              },
              child: Text(
                s,
                style:const TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.black
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
