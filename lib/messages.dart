import 'package:belajar_design_chatty/theme.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      floatingActionButton: chatInput(context: context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [header(), body()],
        ),
      ),
    );
  }

  Widget body() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          receiveMessage(
              imageUri: 'assets/images/pp_1.png',
              text: 'Apakah jadi kita meeting hari ini?',
              time: '2.30'),
          receiveMessage(
              imageUri: 'assets/images/pp_2.png',
              text: 'Gak jadi!',
              time: '2.32'),
          senderMessage(
              imageUri: 'assets/images/pp_3.png',
              text: 'Aku mau pergi keluar:(',
              time: '2.35'),
          receiveMessage(
              imageUri: 'assets/images/pp_1.png',
              text: 'Parah kau!!!',
              time: '2.36')
        ],
      ),
    );
  }

  Widget chatInput({required BuildContext context}) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(75)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Type message ...',
            style: TextStyle(
                fontWeight: FontWeight.w300, color: Color(0xff999999)),
          ),
          Icon(Icons.send)
        ],
      ),
    );
  }

  Widget receiveMessage(
      {required String imageUri, required String text, required String time}) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            imageUri,
            height: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text),
                Text(
                  time,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget senderMessage(
      {required String imageUri, required String text, required String time}) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text),
                Text(
                  time,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            imageUri,
            height: 40,
          )
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      height: 115,
      width: double.infinity,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/icon2.png',
            height: 50,
            width: 50,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wibu Wangi',
                style: titleTextStyle,
              ),
              Text(
                '120 members',
                style: subtitleTextStyle,
              )
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/images/call_button.png',
            width: 30,
          )
        ],
      ),
    );
  }
}
