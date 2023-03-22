import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              color: const Color.fromRGBO(24, 29, 61, 1.0),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .5,
            padding: const EdgeInsets.all(40.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(110.0),
              ),
            ),
            child: Image.asset(
              "assets/person.png",
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .5,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(24, 29, 61, 1.0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(110.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Let's connect\nwith each other",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "A message is a discrete communication\nintended by the source consumption.",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    width: 160.0,
                    height: 60.0,
                    margin: const EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                      color:const  Color.fromRGBO(246, 84, 99, 1.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const  [
                        Text(
                          "Let's Start",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
