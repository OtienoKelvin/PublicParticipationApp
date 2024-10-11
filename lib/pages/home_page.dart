import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Column(
                children: [
                    Row(
                        children: [
                            const Image(
                                image: AssetImage('assets/images/logo.png'),
                                width: 60,
                                height: 60,
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                                Icons.menu,
                                size: 40,
                                color: Colors.blue,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5).copyWith(),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey[100],
                                ),
                                  height: 40,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                          const Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                labelText: 'Search',
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Colors.blue,
                                              ),
                                              child:  const Center(
                                                child: Icon(
                                                  Icons.search,
                                                  color: Colors.white,
                                                  size: 25,
                                                  weight: 20,
                                                ),
                                              ),
                                          )
                                      ],
                                  ),
                              ),
                            ),
                          const Icon(
                            Icons.keyboard_double_arrow_down,
                            size: 40,
                          ),
                          const Image(image: AssetImage('assets/images/coat_of_arms.png'),
                            width: 60,
                            height: 60,
                          )
                        ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        const Text(
                          'Calls for Public Participation',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )
                        ),
                        Expanded(child: Container()),
                        const Row(
                          children: [
                            Icon(
                              Icons.swap_vert,
                            ),
                            Text('Recents'),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200],
                            ),
                            child: const Center(child: Text('The Constitution of Kenya (Amendment Bill), 2024')),
                          )
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 100,
                            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200],
                            ),
                            child: const Center(child: Text('The Constitution of Kenya (Amendment Bill), 2024')),
                          )
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200],
                            ),
                            child: const Center(child: Text('The Constitution of Kenya (Amendment Bill), 2024')),
                          )
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 100,
                            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200],
                            ),
                            child: const Center(child: Text('The Constitution of Kenya (Amendment Bill), 2024')),
                          )
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(child: Container(),),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue,
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.swap_vert,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Threshold for Public Participation',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: Container(),),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text(
                          'Citizens Petitions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue,
                          )
                        ),
                        Expanded(child: Container()),
                        const Text('Show all', style: TextStyle(
                          color: Colors.blue,
                        )),
                      ],
                    )
                ],
            ),
        )
    );
  }
}
