import 'package:flutter/material.dart';

class InstagramFeed extends StatefulWidget {
  const InstagramFeed({Key? key}) : super(key: key);

  @override
  _InstagramFeedState createState() => _InstagramFeedState();
}

class _InstagramFeedState extends State<InstagramFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Training app "),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.white,
              size: 22,
            ),
          ),
        ],
        // leading: ,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _drowHeader(),
                  _drowTitle(),
                  _drowHashtag(),
                  _drowBody(),
                  _dowFotter(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _drowHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: CircleAvatar(
                radius: 20,
                // backgroundImage: AssetImage(""),
                backgroundColor: Colors.blue,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text("data"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("@KaramShaat"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("data"),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 22,
              ),
            ),
            Transform.translate(
              offset: const Offset(-8, 0),
              child: const Text(
                "25",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _drowTitle() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10, left: 16, right: 16),
      child: Text(
        "Hello from chat mobile application ",
        style: TextStyle(
            color: Colors.grey, fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _drowHashtag() {
    return Container(
      child: Wrap(
        children: <Widget>[
          TextButton(
            onPressed: () {},
            child: const Text("data"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("#Flutter"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("data"),
          ),
        ],
      ),
    );
  }

  Widget _drowBody() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: const Image(
        image: AssetImage("images/bg4.jpg"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _dowFotter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text("Comments"),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text("Likes"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Open"),
            ),
          ],
        ),
      ],
    );
  }
}
