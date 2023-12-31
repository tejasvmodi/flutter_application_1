import 'package:flutter/material.dart';
import 'package:flutter_application_1/ChatRoom.dart';

//import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginScreen.dart';
import 'package:flutter_application_1/SplashScreen.dart';
import 'package:flutter_application_1/NotificationView.dart';
 import 'package:flutter_application_1/about_us.dart';
import 'package:flutter_application_1/contact_us.dart';
import 'package:flutter_application_1/image_upload.dart';
import 'package:flutter_application_1/signup.dart';


class home_Screen extends StatelessWidget {
  const home_Screen({super.key});

//  var index =0;
//  final screens=[
//    home_Screen(),
//   SplashScreen(),
//  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Image(
                      height: 100,
                      width: 100,
                      image:
                          AssetImage('assets/pexels-errin-casano-2356045.jpg')),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.upload),
                title: const Text(
                  'Image Upload',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  Home()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_pin_circle_rounded),
                title: const Text(
                  'Chat with Experts',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_phone),
                title: const Text(
                  'Contact Us ',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChatRoom(chatRoomId: '1', userMap: {},)));
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_support),
                title: const Text(
                  'About Us',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => About_us()));
                },
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: CustomSearch());
            },
          ),

          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationView()));
            },
          ),
          
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          for (int i = 1; i <= 10; i++)
            TextButton(
              onPressed: () {
              //   showSnackkBar(
              //       message: 'Tapped $i', icon: const Icon(Icons.touch_app));
              },
              child: Card(
                elevation: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 250,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/123.jpg',
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4)),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.watch_later_outlined,
                                      color: Colors.white,
                                    ),
                                    label: const Text(
                                      "July 22-05:11",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                    ),
                                    label: const Text(
                                      "Ahmedabad - Navrangpura",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 165,
                          ),
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              "Orange Spots On My Fields",
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.android,
                                color: Colors.black87),
                            label: const Text(
                              'AI diagnose: Bilister rust',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.person_search,
                                color: Colors.black87),
                            label: const Text(
                              'Expert diagnose: Anthranose',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Image.asset('assets/images/home_img_demo.jpg'),
                  ],
                ),
              ),
            ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          //first bottom navigation button 
          BottomNavigationBarItem(
            icon: IconButton( icon: Icon(Icons.home),onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => home_Screen(),),);
            }),label: "Home"),
                     
            //second bottom navigation button         
             BottomNavigationBarItem(
            icon: IconButton( icon: Icon(Icons.person),onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Singup(),),);
            }),label: "profile"),
        ],
      ),


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        
        foregroundColor: Colors.white,
        elevation: 12,
        mini: true,
        child:  IconButton(
          icon: Icon(Icons.camera_alt), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
          }, 
        ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = ['abc', 'cdf', 'edf'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}


// class  CusomNotification extends {
  
// }