import 'package:flutter/material.dart';
import '../class_models/page_model.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> pages = [];

  void addToPageModelList() {
    pages.add(
      PageModel(
          "images/bg1.png",
          "Welcome!",
          "1** Making friends is easy as waving your hand back and forth in easy step",
          Icons.face),
    );
    pages.add(
      PageModel(
          "images/bg2.png",
          "Smile(: in Your Home",
          "2** Making friends is easy as waving your hand back and forth in easy step",
          Icons.home),
    );
    pages.add(
      PageModel(
          "images/bg3.png",
          "Write Your Category",
          "3** Making friends is easy as waving your hand back and forth in easy step",
          Icons.category),
    );
    pages.add(PageModel(
        "images/bg4.png",
        "Write Your Questions",
        "4** Making friends is easy as waving your hand back and forth in easy step",
        Icons.question_answer_rounded));
  }

  //الداله هادي هنستدعيها في ميثود البيلد حتى تنفذها اول ما تشتغل
  //طريقه الاستدعاء
  ///  addToPageModelList();
  /// pages[ index ].images,
  /// pages[ index ].title,
  /// pages[ index ].subTitle,
  /// pages[ index ].icons,

  List<String> images = [
    "images/bg1.png",
    "images/bg2.png",
    "images/bg3.jpg",
    "images/bg4.jpg",
  ];
  List<IconData> icons = [
    Icons.home,
    Icons.face,
    Icons.category,
    Icons.question_answer_rounded,
  ];
  List<String> title = [
    "Welcome!",
    "Smile(: in Your Home",
    "Write Your Category",
    "Write Your Questions",
  ];
  List<String> subTitle = [
    " 1** Making friends is easy as waving your hand back and forth in easy step",
    " 2** Making friends is easy as waving your hand back and forth in easy step",
    " 3** Making friends is easy as waving your hand back and forth in easy step",
    " 4** Making friends is easy as waving your hand back and forth in easy step",
  ];

  @override
  Widget build(BuildContext context) {
    // addToPageModelList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          images[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //
                      Transform.translate(
                        offset: const Offset(-10, -140),
                        child: Icon(
                          icons[index],
                          size: 250,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        title[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 40, right: 40, top: 20),
                        child: Text(
                          subTitle[index],
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: images.length,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 16, right: 16),
              //هنا السايزبوكس هيجر الابن على التمدد حسب ابعاده

              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _drowSingleLine() {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          elevation: 0,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 120,
                height: 150,
                child: Image(
                  image: AssetImage("assetName"),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Text("Karam Shaat"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("data"),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("data"),
                            Icon(Icons.question_answer_rounded),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: 20,
    );
  }
}
