import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipes/nav.dart';
import 'package:recipes/settings.dart';

class Recipe extends StatefulWidget {
  const Recipe({super.key});

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Image.asset("assets/image/s3.png", fit: BoxFit.fill),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 335),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 24),
                            child: Text(
                              "Мексиканский боул\nс курицей и овощами ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Image.asset("assets/image/s4.png"),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 16, left: 16, right: 16),
                            child: Text(
                              "Значимость этих проблем настолько очевидна, что социально-экономическое развитие говорит о возможностях поэтапного и последовательного развития общества. Господа, экономическая повестка сегодняшнего дня является качественно новой ступенью системы массового участия.",
                              style: TextStyle(
                                color: Color(0xffA7ADB5),
                                fontSize: 16,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, left: 16, bottom: 16),
                              child: Material(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Colors.white,
                                elevation: 0,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(10.0),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 104,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                      border: Border.all(
                                        color: const Color(0xffEFEFEF),
                                        width: 1,
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12, top: 2),
                                          child: SvgPicture.asset(
                                              "assets/icons/back.svg"),
                                        ),
                                        const Center(
                                            child: Text(
                                          "Назад",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: MediaQuery.of(context).viewPadding.top + 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: SvgPicture.asset("assets/icons/back.svg"),
                ),
                GestureDetector(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()),
                      );
                    }),
                    child: SvgPicture.asset("assets/icons/settings.svg")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawCircle extends CustomPainter {
  late Paint _paint;

  DrawCircle() {
    _paint = Paint()
      ..color = Color(0xffEFEFEF)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(const Offset(0.0, 0.0), 13.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
