import 'package:flutter/material.dart';
class ImageLargeView extends StatelessWidget {
  final String? imageUrl;
  ImageLargeView(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[600],

      appBar: AppBar(
        title: Text(''),// You can add title here
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.blue.withOpacity(0.3), //You can make this transparent
        elevation: 0.0, //No shadow
      ),

      body: Image.network(imageUrl!,
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,),
    );
  }
}

