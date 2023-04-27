import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ChatScreen.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    pt= Provider.of(context,listen: true);
    pf= Provider.of(context,listen: false);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,color: Colors.teal
              ),
              child: Icon(Icons.link,color: Colors.white,),
            ),
            title: Text("Create call link",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),
            ),
            subtitle: Text("Share a link for your WhatsApp call",style: TextStyle(color: Colors.grey,fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("Recent",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("${pf!.WList[index].img}"),radius: 25,
                ),
                title: Text("${pf!.WList[index].name}"),
                subtitle: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Icon(Icons.call_received_outlined,color: Colors.red,size: 18,),
                  SizedBox(width: 5),
                  Text("${pf!.WList[index].time}")
                ],),
                trailing:Icon(Icons.call,color: Colors.teal,)
              );
            },
                itemCount: pf!.WList.length,
                physics:  BouncingScrollPhysics()
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.add_ic_call_outlined),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
