import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}):super(key: key);

  @override
  State<SplashScreen> createState()=> _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body:Stack(
        children: [
         Image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('assets/pexels-errin-casano-2356045.jpg'),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.15),
                Colors.black.withOpacity(0.5),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
              )
            ),
          ),

         Align(
          alignment: Alignment.center,
            child:Image(
               height: 300,
               width: 300,
                image:AssetImage('assets/pexels-errin-casano-2356045.jpg')
               )   
                 ),
                  ],
      ),
    );
  }
}