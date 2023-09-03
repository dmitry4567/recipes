import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Recipe.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
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
            "Рецепты",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Inter",
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Recipe()),
              );
            },
            child: Column(
              children: [
                Image.asset(
                  "assets/image/s.png",
                  width: 165,
                ),
                Container(
                  width: 165,
                  alignment: Alignment.centerLeft,
                  padding: const  EdgeInsets.only(top: 8),
                  child: const Text(
                    "Мексиканский боул\nс курицей и овощами ",
                    style: TextStyle(fontSize: 15, fontFamily: "Inter"),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 8),
                    width: 165,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: (() {}),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xffE69D2B),
                        ),
                      ),
                      child: SvgPicture.asset("assets/icons/solar.svg"),
                    ),
                  ),
                )
              ],
            ),
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 260),
        )),
      ],
    );
  }
}
