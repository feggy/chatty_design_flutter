import 'package:belajar_design_chatty/theme.dart';
import 'package:belajar_design_chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Rea Sanka',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: whiteColor),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Pemeran Anime',
                style: TextStyle(fontSize: 16, color: lightBlueColor),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/pp_1.png',
                      name: 'Pinka',
                      text: 'Maaf, ada apa ya?',
                      time: 'Now',
                      unread: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/pp_2.png',
                      name: 'Ruby',
                      text: 'Mau gw bantai lu?',
                      time: '2:30',
                      unread: false,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Groups',
                      style: titleTextStyle,
                    ),
                    ChatTile(
                        imageUrl: 'assets/images/icon1.png',
                        name: 'Killer',
                        text: 'Adakah bulletin hari ini?',
                        time: '11:11',
                        unread: false),
                    ChatTile(
                        imageUrl: 'assets/images/icon2.png',
                        name: 'One Piece',
                        text: 'Usopp ketangkap woii...',
                        time: '09:23',
                        unread: true),
                    ChatTile(
                        imageUrl: 'assets/images/icon3.png',
                        name: 'Kelompok D',
                        text: 'Besok kita akan rapat rutin mo...',
                        time: '07:33',
                        unread: true),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
