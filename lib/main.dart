import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // This widget is the root of your application.

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.indigo,
          ),
        ),
        backgroundColor: Colors.amber[200],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0,),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/30628.jpg'),
                  radius: 50.0,
                ),
                SizedBox(width: 90.0,),
                Text(
                  '${count}',
                  style: TextStyle(
                    fontSize: 23.0,
                    color: Colors.black87,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),

            const Divider(
              height: 70.0,
              color: Colors.black26,
              thickness: 1.5,
            ),

            Row(
              children: const [
                Text(
                  'Name:',
                  style: TextStyle(
                    fontSize: 23.0,
                    color: Colors.black87,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(width: 5.0,),
                Expanded(
                  child: Text(
                    'Mohammad Rakib',
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.black87,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25.0,),
            Row(
              children: const [
                Icon(
                  Icons.email_rounded,
                  color: Colors.red,
                  size: 38.0,
                ),
                SizedBox(width: 45.0,),
                Expanded(
                  child: Text(
                    'mohammadrakibzaman@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
                child: Center(child: Image.asset('assets/istockphoto-1137892510-612x612.jpg')),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){setState(() {
          count += 1;
        });},
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
