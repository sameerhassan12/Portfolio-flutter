import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_portfolio/constants/app_images.dart';
import 'package:my_portfolio/widgets/onHoverWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool firstIshovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Sameer UL Hassan",
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 14, color: Colors.white, letterSpacing: 2)),
          elevation: 0,
          backgroundColor: Colors.black,
          actions: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OnHoverWidget(
                            cursor: SystemMouseCursors.click,
                            builder: ((isHovered) {
                              final color =
                                  isHovered ? Colors.orange : Colors.white;
                              return Text(
                                "Home",
                                style: TextStyle(color: color),
                              );
                            })),
                        const SizedBox(width: 40),
                        OnHoverWidget(
                            cursor: SystemMouseCursors.click,
                            builder: ((isHovered) {
                              final color =
                                  isHovered ? Colors.orange : Colors.white;
                              return Text(
                                "MyIntro",
                                style: TextStyle(color: color),
                              );
                            })),
                        const SizedBox(width: 40),
                        OnHoverWidget(
                            cursor: SystemMouseCursors.click,
                            builder: ((isHovered) {
                              final color =
                                  isHovered ? Colors.orange : Colors.white;
                              return Text(
                                "Projects",
                                style: TextStyle(color: color),
                              );
                            })),
                        const SizedBox(width: 40),
                        OnHoverWidget(
                            cursor: SystemMouseCursors.click,
                            builder: ((isHovered) {
                              final color =
                                  isHovered ? Colors.orange : Colors.white;
                              return Container(
                                child: Text(
                                  "Contact",
                                  style: TextStyle(color: color),
                                ),
                              );
                            })),
                        // const SizedBox(width: 40),
                        // OnHoverWidget(
                        //     cursor: SystemMouseCursors.click,
                        //     builder: ((isHovered) {
                        //       final color =
                        //           isHovered ? Colors.orange : Colors.white;
                        //       return Container(
                        //         decoration: BoxDecoration(
                        //             border: Border.all(color: Colors.red),
                        //             borderRadius: BorderRadius.circular(5)),
                        //         child: Text(
                        //           "Resume",
                        //           style: TextStyle(color: color),
                        //         ),
                        //       );
                        //     })),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 170),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OnHoverWidget(
                            cursor: SystemMouseCursors.text,
                            builder: (isHovered) {
                              return Row(
                                children: [
                                  Text("WELCOME TO MY PORTFOLIO",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(
                                            fontSize: 20,
                                          )),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Icon(
                                    Icons.waving_hand_rounded,
                                    color: Colors.amber,
                                  )
                                ],
                              );
                            }),
                        const SizedBox(
                          height: 20,
                        ),
                        OnHoverWidget(
                            cursor: SystemMouseCursors.text,
                            builder: (isHovered) {
                              return Text("Sameer",
                                  maxLines: 3,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(
                                          fontSize: 50, letterSpacing: 2));
                            }),
                        OnHoverWidget(
                            cursor: SystemMouseCursors.text,
                            builder: (isHovered) {
                              return Text("Ul Hassan",
                                  maxLines: 3,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          fontSize: 50,
                                          letterSpacing: 2,
                                          fontWeight: FontWeight.bold));
                            }),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            child: OnHoverWidget(
                          builder: ((isHovered) {
                            return Row(
                              children: [
                                const Icon(
                                  Icons.arrow_right_rounded,
                                  color: Colors.red,
                                  size: 27,
                                ),
                                Text("Flutter Mobile App Developer",
                                    maxLines: 3,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                            fontSize: 17, letterSpacing: 2)),
                              ],
                            );
                          }),
                          cursor: SystemMouseCursors.text,
                        )),
                        // OnHoverWidget(
                        //     cursor: SystemMouseCursors.click,
                        //     builder: ((isHovered) {
                        //       final color =
                        //           isHovered ? Colors.orange : Colors.green;
                        //       final textColor =
                        //           isHovered ? Colors.black : Colors.white;
                        //       return Container(
                        //         margin: const EdgeInsets.only(top: 30),
                        //         height: 40,
                        //         width: 100,
                        //         decoration: BoxDecoration(
                        //             color: color,
                        //             borderRadius: BorderRadius.circular(10)),
                        //         child: Center(
                        //           child: Text(
                        //             "GET STARTED",
                        //             style: TextStyle(
                        //               color: textColor,
                        //               fontSize: 10,
                        //             ),
                        //           ),
                        //         ),
                        //       );
                        //     })),

                        const SizedBox(
                          height: 30,
                        ),
                        Wrap(
                          runSpacing: 7,
                          children: [
                            OnHoverWidget(
                                builder: ((isHovered) {
                                  return const CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage(AppImages.github),
                                  );
                                }),
                                cursor: SystemMouseCursors.click),
                            const SizedBox(
                              width: 20,
                            ),
                            OnHoverWidget(
                                builder: ((isHovered) {
                                  return const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                        AssetImage(AppImages.stackOverflow),
                                  );
                                }),
                                cursor: SystemMouseCursors.click),
                            const SizedBox(
                              width: 20,
                            ),
                            OnHoverWidget(
                                builder: ((isHovered) {
                                  return const CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage(AppImages.fbicon),
                                  );
                                }),
                                cursor: SystemMouseCursors.click),
                            const SizedBox(
                              width: 20,
                            ),
                            OnHoverWidget(
                                builder: ((isHovered) {
                                  return const CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage(AppImages.linkdin),
                                  );
                                }),
                                cursor: SystemMouseCursors.click),
                          ],
                        )
                      ],
                    ),
                    Container(
                      child: Image.asset(
                        AppImages.myImage,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
