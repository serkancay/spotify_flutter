import 'package:flutter/material.dart';
import 'screens/album_screen.dart';

void main() => runApp(SpotifyApp());

class SpotifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(fontFamily: 'Gotham'),
      home: AlbumScreen(),
    );
  }
}
