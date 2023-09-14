import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginScreen.dart';
import 'package:flutter_application_1/SplashScreen.dart';
import 'package:flutter_application_1/NotificationView.dart';

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
      body: Container(
        child: ListView.builder(
            itemBuilder: (context, index) => GridTile(
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(4)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("_GridTitleText(photo.title)"),
                      subtitle: Text("_GridTitleText(photo.subtitle)"),
                    ),
                  ),
                  child: Image.asset("assets/pexels-errin-casano-2356045.jpg"),
                ),
            itemCount: 10),
      ),
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
        child: const Icon(
          Icons.camera_alt_rounded,
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