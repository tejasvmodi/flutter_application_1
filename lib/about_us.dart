import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class About_us extends StatelessWidget {
  const About_us({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        ),
      body:Card(
       
        child: Column(
           
          children: [
            
            Padding(
              
              padding: EdgeInsets.all(20),
            
              child: 
              Column(
                children: [
                  
                  Text("This application will allow farmers to take help from experts to identify disease in plant.",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
                  Text("This application is created by MSCIT students SEM-1.",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
              
                ],
              ),
            

            )
          ],
        ),
      ),
    );
  }
}