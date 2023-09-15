import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('assets/pexels-errin-casano-2356045.jpg'),
          ),
          Form(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.15),
                Colors.black.withOpacity(0.5),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            ),
          ),
           Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Email Address'),
                      fillColor: Colors.transparent,
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                   decoration: InputDecoration(
                      // hintText: "Email Address",
                      label: Text('Password'),
                      fillColor: Colors.transparent,
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding:EdgeInsets.only(left: 19,right: 18),
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      Spacer(),
                      Text('forgot password',style: TextStyle(
                        color: Colors.grey,
                      ),),
                     
                   
                  
                    
                       ],
                        ),
                   ),
                        const SizedBox(height: 20,),
                        Container(
                        height: 50,
                        width: 350,
                       
                        child: Center(child: FilledButton(
                          onPressed: (){},
                          child: const Text('Login',),
                        ),
                          ),
                      ),
                       const SizedBox(height: 20,),
                       const Padding(
                       padding: EdgeInsets.only(left: 19,top: 8,right: 18),
                       child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                              Text('--------',style: TextStyle(color: Colors.white,fontSize: 30),),
                              Text('Or Login With',style: TextStyle(color: Colors.white,fontSize: 15),),
                              Text('--------',style: TextStyle(color: Colors.white,fontSize: 30),),
                        ],
                      ),
                        ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    
                    decoration: BoxDecoration(
                      color: const Color(0xff484848),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Icon(Icons.g_mobiledata,color: Colors.white,size: 40,),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    
                    decoration: BoxDecoration(
                      color: const Color(0xff484848),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Icon(Icons.apple,color: Colors.white,size: 40,),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    
                    decoration: BoxDecoration(
                      color: const Color(0xff484848),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Icon(Icons.facebook_outlined,color: Colors.white,size: 40,),
                  ),
                  
                ],
              ),
              
              const Padding(
                padding: EdgeInsets.only(left: 100.0,top:30),
                child: Row(
                  children: [
                    Text("Don't Have an Account?",style: TextStyle(color: Colors.grey,),),
                      Text("Singup",style: TextStyle(color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      ),)
                  ],
                ),
              )
              ],
            ),
          ) 
        ],
      ),
    );
  }
}
