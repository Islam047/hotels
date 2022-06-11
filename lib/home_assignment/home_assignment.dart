import 'package:flutter/material.dart';

class HomeAssignment extends StatefulWidget {
  static const String id = '/home_assignment';

  const HomeAssignment({Key? key}) : super(key: key);

  @override
  State<HomeAssignment> createState() => _HomeAssignmentState();
}

class _HomeAssignmentState extends State<HomeAssignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #header
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/img.png'),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.5),
                ],),),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Best Hotels Ever',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                        height: 50,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search for hotels',
                              hintStyle: TextStyle(
                                fontSize: 15,
                              ),
                              border: InputBorder.none),
                        )),
                    const SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
            ),
            // #body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // #firstItem
                    const SizedBox(height: 10,),
                    const Text(
                      'Business hotels',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem(
                              image: 'assets/images/img_1.png', title: 'Hotel 1'),
                          makeItem(
                              image: 'assets/images/img_2.png', title: 'Hotel 2'),
                          makeItem(

                              image: 'assets/images/img_2.png', title: 'Hotel 1'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    // #secondItem
                    const Text(
                      'Airport hotels',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem(
                              image: 'assets/images/img_2.png', title: 'Hotel 2'),
                          makeItem(

                              image: 'assets/images/img_1.png', title: 'Hotel 1'),
                          makeItem(

                              image: 'assets/images/img_2.png', title: 'Hotel 1'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    // #thirdItem
                    const Text(
                      'Resort hotels',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem(
                              image: 'assets/images/img_2.png', title: 'Hotel 2'),
                          makeItem(

                              image: 'assets/images/img_1.png', title: 'Hotel 1'),
                          makeItem(

                              image: 'assets/images/img_2.png', title: 'Hotel 1'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1.05,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        margin: const EdgeInsets.only(right: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
              const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
