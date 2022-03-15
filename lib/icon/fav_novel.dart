
import 'package:flutter/material.dart';

bool like = false;
bool unlike = false;
bool isFavorite = false;

class Like extends StatefulWidget {
  const Like({Key? key}) : super(key: key);

  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.white.withOpacity(0.1),
      child: IconButton(
        onPressed: () {
          setState(() {
            if (unlike == true) {
              like==false;
            }
            else{
              like = !like;
            }
          });
        },
        icon: Icon(
          like ? Icons.thumb_up : Icons.thumb_up_outlined,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}

class Unlike extends StatefulWidget {
  const Unlike({Key? key}) : super(key: key);

  @override
  _UnlikeState createState() => _UnlikeState();
}

class _UnlikeState extends State<Unlike> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.white.withOpacity(0.1),
      child: IconButton(
        onPressed: () {
          setState(() {
              if(like == true){
                unlike = false;
              }
              else{
                unlike = !unlike;
              }
          });
        },
        icon: Icon(
          unlike ? Icons.thumb_down : Icons.thumb_down_outlined,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteButtonState();
  }
}

class _FavoriteButtonState extends State<FavoriteButton> {

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.white.withOpacity(0.1),
      child: IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}

