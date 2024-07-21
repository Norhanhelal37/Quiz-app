// import 'package:app/model.dart';
// import 'package:app/qustions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

// class Home extends StatefulWidget {
//   final Function switchscreen;

//   Home(
//     this.switchscreen, {
//     super.key,
//   });

//   @override
//   State<Home> createState() => _HomeState();
// }

class Home extends StatelessWidget {
  final Function()? switchscreen;

  const Home(this.switchscreen,{super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 104, 156, 247),
        Color.fromARGB(255, 166, 218, 241)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: const Image(
              image: AssetImage("assets/images/quiz-logo.png"),
              width: 200,
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          const Text(
            "Test Your Information About Flutter ",
            
            style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
          ),
         
          Container(
            width: 200,
            // padding: const EdgeInsets.only(left: 100, right: 100),
            child: ElevatedButton.icon(

              onPressed: switchscreen,
              label: const Text("Start !",style: TextStyle(fontSize: 20),),
              icon: const Icon(Icons.arrow_right,size: 40,),
            ),
          )
        ],
      ),
    ));
  }
}
