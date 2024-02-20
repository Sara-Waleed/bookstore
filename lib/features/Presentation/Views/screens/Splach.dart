
import 'package:flutter/material.dart';

import 'StartPoint.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/Wt5pDPR1.jpeg",fit: BoxFit.fill,width: double.infinity,height:double.infinity),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Center(
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartPoint(),));
                }, child: Text("Enjoy")),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ],
      ),
    );
  }
}