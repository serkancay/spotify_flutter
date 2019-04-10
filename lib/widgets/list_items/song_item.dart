import 'package:flutter/material.dart';
import 'package:spotify_flutter/models/song.dart';

class SongItem extends StatelessWidget {
  final Song song;

  const SongItem(this.song);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  song.name,
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(song.artist,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey)),
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              size: 32.0,
              color: Colors.grey,
            ),
            onPressed: null,
          )
        ],
      ),
    );
  }
}
