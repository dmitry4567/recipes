import 'package:flutter/material.dart';

class Lesson extends StatefulWidget {
  const Lesson({super.key});

  @override
  State<Lesson> createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            bottom: 16,
          ),
          child: Text(
            "Видео-уроки",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Inter",
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Spacer(),
        Column(
          children: [
            const Text(
              "Вы переходите по внешней ссылке",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: "Inter",
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(25.0),
                    elevation: 0,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
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
                        child: const Center(
                          child: Text(
                            "Нет",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(10.0),
                    elevation: 10,
                    color: Color(0xffE69D2B),
                    shadowColor: Color(0xFFFF8C3B).withOpacity(0.5),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 104,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: const Center(
                          child: Text(
                            "Да",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
