import 'package:coffee_application/pages/secondpage.dart';
import 'package:flutter/material.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Image.asset('assets/images/coffeimg.jpg',
                      fit: BoxFit.contain,
                      height: 600,
                      width: 702,
                      alignment: Alignment.center),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 555, left: 35, right: 15, bottom: 17),
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.black],
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.dstIn,
                      child: Container(
                          alignment: Alignment.center,
                          width: 336,
                          height: 134,
                          // color: Colors.white,
                          child: const Text(
                            'Coffee so good,\nyour taste buds\n will love it.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.w600,
                              wordSpacing: 10,
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 717,
                      left: 35,
                      right: 35,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      // color: Colors.blue,
                      width: 336,
                      height: 49,
                      child: const Text(
                        'The best grain, the finest roast, the \npowerful flavor.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(169, 169, 169, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchCoffe(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      margin: const EdgeInsets.only(
                          top: 775, left: 50, right: 50, bottom: 10),
                      width: 317,
                      height: 50,
                      child: SizedBox(
                        width: 261,
                        height: 54,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 38,
                              height: 38,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/google.png',
                                width: 38,
                                height: 38,
                              ),
                            ),
                            const Text(
                              'Continue with Google',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(
                                    0,
                                    0,
                                    0,
                                    0.54,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}

// class BackgroundImageCoffe extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return ,
//         // Add other widgets on top of the background image here
//       ],
//     );
//   }
// }
