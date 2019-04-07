import 'package:flutter/material.dart';
class BasicDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image:DecorationImage(
          image: NetworkImage("https://resources.ninghao.org/images/say-hello-to-barry.jpg"),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5), 
            BlendMode.hardLight,
            )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0,color: Colors.white),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(
                color: Colors.yellow,
                width: 3,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                )
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0),
              //   ],
              // ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
          )
        ],
      ),

    );
  }

}
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: "Jero",
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: ".net",
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            ),
          ),
        ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = "邹鑫安";
  final String _title = "一封情书";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "《$_title》--$_author--你不开心的时候，我陪你，你哭泣的时候，我陪你，你心情很不爽的时候，我陪你，你不想回家的时候，我陪你，无论怎样，我都陪你，只因为你是我最爱的人，你就是我的音乐，你给我带来好听的音符。你是我的全部，你给我生命带来了色彩。我永远爱你！可以跟我在一起吗？",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
