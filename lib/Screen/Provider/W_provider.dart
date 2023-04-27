
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_with_tabview/Screen/Model/whatsapp_model.dart';

class WhatsappProvider extends ChangeNotifier
{
  List<WhatsappModel> WList = [
     WhatsappModel(img: 'assets/images/w1.jpg',name: 'Darshan sankhat',subt: '😂',time: 'Today, 7:14am',t: 'Today, 7:14 am'),
     WhatsappModel(img: 'assets/images/w2.jpg',name: 'prince raval',subt: 'Good Morning',time: '21 April, 3:55pm',t: 'Today, 11:07 am'),
     WhatsappModel(img: 'assets/images/w3.jpg',name: 'vivek',subt: 'Good Morning',time: '21 April, 5:28pm',t: 'Today, 6:51 am'),
     WhatsappModel(img: 'assets/images/w4.jpg',name: 'kumbhani',subt: 'Good Morning',time: '19 March, 9:41pm',t:'Today, 2:03 pm'),
     WhatsappModel(img: 'assets/images/w5.jpg',name: 'yash',subt: 'Good Morning',time: '11 March, 5:00pm',t: 'Today, 1:26 pm'),
     WhatsappModel(img: 'assets/images/w6.jpg',name: 'dixit',subt: 'Good Morning',time: '27 February, 7:25pm',t: 'Yesterday, 10:11 pm'),
     WhatsappModel(img: 'assets/images/w7.jpg',name: 'krunal',subt: 'Good Morning',time: '31/12/22, 12:47pm',t: 'Yesterday, 8:10 pm'),
  ];
}