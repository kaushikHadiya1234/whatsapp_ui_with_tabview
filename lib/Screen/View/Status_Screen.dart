import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui_with_tabview/Screen/View/ChatScreen.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    pt= Provider.of(context,listen: true);
    pf= Provider.of(context,listen: false);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          ListTile(
            leading: Stack(
              alignment: Alignment(1.2,1.3),
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/w8.jpg"),
                  radius: 27,
                ),
                Container(
                  height: 25,
                  width: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.teal[600]
                  ),
                  child: Icon(Icons.add,color: Colors.white,),
                )
              ],
            ),
            title: Text("My status",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),
          ),
            subtitle: Text("Tap to add status update",style: TextStyle(color: Colors.grey,fontSize: 15),),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("Recent update",style: TextStyle(fontSize: 13,color: Colors.grey[600],fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return  ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.teal,width: 2)
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("${pf!.WList[index].img}"),
                    radius: 22,
                  ),
                ),
                title: Text("${pf!.WList[index].name}",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),
                ),
                subtitle: Text("${pf!.WList[index].t}",style: TextStyle(color: Colors.grey,fontSize: 15),),
              );
            },
              itemCount:pf!.WList.length
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
