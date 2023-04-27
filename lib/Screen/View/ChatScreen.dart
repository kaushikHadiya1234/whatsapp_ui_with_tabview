import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui_with_tabview/Screen/Provider/W_provider.dart';

WhatsappProvider? pt;
WhatsappProvider? pf;


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    pt= Provider.of(context,listen: true);
    pf= Provider.of(context,listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: InkWell(
            onTap: () {
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                   content: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Container(
                         height: 200,
                         width: 300,
                         child: Stack(
                           children: [
                             Image.asset("${pf!.WList[index].img}",fit: BoxFit.fill,),
                             Text("${pf!.WList[index].name}",style: TextStyle(fontSize: 20,color: Colors.white),),
                           ],
                         ),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Icon(Icons.message,color: Colors.teal,),
                           Icon(Icons.call,color: Colors.teal,),
                           Icon(Icons.videocam_sharp,color: Colors.teal,),
                           Icon(Icons.mode,color: Colors.teal,),
                         ],
                       )
                     ],
                   ),
                );
              },);
            },
            child: CircleAvatar(
              backgroundImage: AssetImage("${pf!.WList[index].img}"),radius: 25,
            ),
          ),
          title: Text("${pf!.WList[index].name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          subtitle: Text("${pf!.WList[index].subt}",style: TextStyle(textBaseline: TextBaseline.alphabetic ),),
          trailing: Text("yesterday"),
        );
      },
        itemCount: pf!.WList.length,
        physics:  BouncingScrollPhysics()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.message),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
