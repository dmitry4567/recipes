import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: SvgPicture.asset(
              "assets/icons/back.svg",
              width: 24,
              height: 24,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              bottom: 16,
              left: 16,
              right: 16,
            ),
            child: Text(
              "Настройки",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Inter",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: const [
                      Divider(
                        color: Color(0xffEFEFEF),
                        height: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 16),
                        child: Text(
                          "Изменить язык",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: const [
                      Divider(
                        color: Color(0xffEFEFEF),
                        height: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 16),
                        child: Text(
                          "Письмо администратору",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xffEFEFEF),
                        height: 1,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Ink(
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 16, bottom: 16),
                          child: Text(
                            "Другие настройки",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Divider(
                          color: Color(0xffEFEFEF),
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
