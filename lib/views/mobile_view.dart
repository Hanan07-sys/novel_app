import 'package:flutter/material.dart';
import 'package:novel_app/Pages/content_novel.dart';
import 'package:novel_app/Pages/detail_novel.dart';
import 'package:novel_app/Pages/main_screen.dart';
import 'package:novel_app/icon/fav_novel.dart';
import 'package:novel_app/model/data.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      appBar: AppBar(
        title: Text(
          'OGNovel',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF4F4F4F),
      ),
      body: ContentNovel(),
    );
  }
}

class ContentNovel extends StatefulWidget {
  const ContentNovel({Key? key}) : super(key: key);

  @override
  _ContentNovelState createState() => _ContentNovelState();
}

class _ContentNovelState extends State<ContentNovel> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemBuilder: (context, index) {
        final DataNovel data = DataNovelList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailNovel(data: data);
            }));
          },
          child: Hero(
            tag: data.title,
            child: Column(
              children: [
                Flexible(
                  child: Container(
                    height: 300,
                    width: 300,
                    child: Image(
                      image: AssetImage(data.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: DataNovelList.length,
    );
  }
}

class DetailNovel extends StatelessWidget {
  var information18 =
      TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Roboto');
  var information16 =
      TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Roboto');
  var information14 =
      TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Roboto');
  final DataNovel data;
  DetailNovel({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      appBar: AppBar(
        backgroundColor: Color(0xFF4F4F4F),
      ),
      body: SingleChildScrollView(
        child: buildColumnContentNovel(context),
      ),
    );
  }

  Column buildColumnContentNovel(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Hero(
                          tag: data.title,
                          child: Container(
                              height: 200,
                              width: 150,
                              child: Material(
                                elevation: 15.0,
                                shadowColor: Colors.grey.shade500,
                                child: Image(
                                  image: AssetImage(data.image),
                                  fit: BoxFit.fill,
                                ),
                              )),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    buildRowTitleContent(context),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Like(),
                  const SizedBox(
                    width: 5,
                  ),
                  Unlike(),
                  const SizedBox(
                    width: 5,
                  ),
                  FavoriteButton()
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Sinopsis',
                        style: information16,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              buildSinopsisDetail(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ReadNovel(data: data);
                  }));
                },
                child: buildChapterDetail(),
              )
            ],
          ),
        )
      ],
    );
  }

  Card buildChapterDetail() {
    return Card(
      color: Colors.purple,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.chapter,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                    Text(data.date,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column buildSinopsisDetail() {
    return Column(
      children: [
        Container(
          child: Text(data.sinopsis,
              textAlign: TextAlign.justify, style: information14),
        )
      ],
    );
  }

  Row buildRowTitleContent(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                buildStarDetail(),
                const SizedBox(
                  height: 10,
                ),
                buildAuthorDetail(),
                const SizedBox(
                  height: 10,
                ),
                buildGenreDetail(),
                SizedBox(
                  height: 10,
                ),
                buildStatusDetail(),
                SizedBox(
                  height: 10,
                ),
                buildButtonDetail(context),
                //ICON
              ],
            )
          ],
        ),
      ],
    );
  }

  Row buildButtonDetail(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.redAccent),
          child: Text(
            'READ NOW',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ReadNovel(data: data);
            }));
          },
        ),
      ],
    );
  }

  Row buildStatusDetail() {
    return Row(
      children: [
        Text('Status: ', style: information16),
        Text(data.status, style: TextStyle(color: Colors.orange))
      ],
    );
  }

  Text buildGenreDetail() {
    return Text('Genre : ' + data.genre1 + ',' + data.genre2,
        style: information16);
  }

  Text buildAuthorDetail() {
    return Text('Author: ' + data.author,
        maxLines: 1, overflow: TextOverflow.ellipsis, style: information16);
  }

  Row buildStarDetail() {
    return Row(
      children: [
        Text('Rating: ' + data.rating, style: information18),
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
      ],
    );
  }
}

class ReadNovel extends StatelessWidget {
  var information36 =
      const TextStyle(color: Colors.white, fontSize: 10, fontFamily: 'Roboto');
  final DataNovel data;
  ReadNovel({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      appBar: AppBar(
        title: Text(data.title),
        centerTitle: true,
        backgroundColor: Color(0xFF4F4F4F),
      ),
      body: SingleChildScrollView(
        child: buildTitleContent(),
      ),
    );
  }

  Padding buildTitleContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Column(
            children: [
              Column(
                children: [
                  Center(
                      child: Text(
                    data.chapter,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          buildMainContent()
        ],
      ),
    );
  }

  Column buildMainContent() {
    return Column(
      children: [
        Text(
          data.content,
          textAlign: TextAlign.justify,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }
}
