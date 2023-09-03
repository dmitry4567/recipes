import 'package:flutter/material.dart';

class Training extends StatefulWidget {
  const Training({super.key});

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
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
            "Обучение",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Inter",
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Divider(
          height: 2,
          color: Color(0xffEFEFEF),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "16.08.2023",
                            style: TextStyle(
                              color: Color(0xffE69D2B),
                              fontSize: 16,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Название обучения может быть длинным или коротким, в одну или две строки",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Inter",
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Значимость этих проблем настолько очевидна, что социально-экономическое развитие говорит о возможностях поэтапного и последовательного развития общества.",
                            style: TextStyle(
                              color: Color(0xffA7ADB5),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Inter",
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 2,
                      color: Color(0xffEFEFEF),
                    ),
                  ],
                );
              })),
        )
      ],
    );
  }
}
