import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: listView(),
    );
  }

  PreferredSizeWidget appBar(){
    return AppBar(
      title : Text('Notification Screen'),
    );
  }

  Widget listView(){
    return ListView.separated(
      itemBuilder: (context, index) {
        return listViewItem(index);
      },
      separatorBuilder: (context, index) {
          return Divider(height: 10);
      },
      itemCount: 12
    );
  }
 Widget listViewItem(int index){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
    child:Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                  prefixIcon(),
        Expanded(

        child: Container(
           margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              message(index),
               timeAndDate(index),
            ],
          ),
        ),
        ),
      ],
    ),
  );
 }

 Widget prefixIcon(){
  return Container(
    height: 70,
    width: 50,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey.shade300,
    ),
    child: Icon(Icons.person, size: 25,color: Colors.grey.shade700,),
  );
 }


Widget message(int index){
  double textSize =14;
  return Container(
    child: RichText(
      
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
     text: TextSpan(
        text: 'Message',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: '  Message Description',
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    ),
  );

}
  
Widget timeAndDate(int index){
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('23-01-2021',
        style: TextStyle(
          fontSize: 10,
        ),),
        Text('07:10',
        style: TextStyle(
          fontSize: 10,
        ),),
      ],
    ),
  );
}
}