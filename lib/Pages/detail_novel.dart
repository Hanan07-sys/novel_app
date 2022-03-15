import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novel_app/views/mobile_view.dart';
import 'package:novel_app/views/web_view.dart';



class DetailNovel extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 400){
        return MobileView();
      }
      else{
        return WebView();
      }
    });
  }
}
