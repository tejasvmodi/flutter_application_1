import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginScreen.dart';
import 'package:flutter_application_1/SplashScreen.dart';
import 'package:flutter_application_1/NotificationView.dart';
import 'package:flutter_application_1/image_upload.dart';

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
                leading: const Icon(Icons.home),
                title: const Text(
                  'Page 1',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_a_photo),
                title: const Text(
                  'Page 2',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SplashScreen()));
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
          // const CircleAvatar(
          //   radius: 20,
          //   backgroundColor: Color.fromARGB(255, 166, 182, 167),
          //   child: Icon(
          //     Icons.search,
          //     size: 25,
          //     color: Colors.black,
          //   ),
          // ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 10),
          //   child: CircleAvatar(
          //     radius: 20,
          //     backgroundColor: Color.fromARGB(255, 211, 239, 213),
          //     child: Icon(
          //       Icons.notifications,
          //       size: 25,
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(itemCount:3, itemBuilder : (BuildContext context ,int index) {
        return Card(
          
          child:  Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage('assets/pexels-errin-casano-2356045.jpg'),
                    child: InkWell(
                      onTap: () {
                      },
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
              const Align(alignment: Alignment.topLeft,
                 child: Text(
                   '⏰ july 22-5:01 PM  ',
                   style: TextStyle(color: Colors.black),
                 ),
               ), 
                 const Padding(
                 padding: EdgeInsets.only(right: 230,bottom: 0,top: 200,left: 9),
                 child: Text(
                   'Leaf Problem By default ',
                   style: TextStyle(color: Colors.white),
                 ),
               ), 
                ],
              ),
            
              const Align(alignment: Alignment.bottomLeft, child: Text('this is a card with an image  and text',style: TextStyle(color: Colors.black),),)
                  
     
          
          ]),
        );
      } ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
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
          icon: Icon(Icons.add), onPressed: () {
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