import 'package:flutter/material.dart';
import 'package:spotify_flutter/widgets/list_items/song_item.dart';
import 'package:spotify_flutter/models/song.dart';

class AlbumScreen extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Color(0xFFA35D59),
      leading: BackButton(),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.more_vert,
          ),
          onPressed: () {},
        )
      ],
    );
  }

  Theme buildBottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF222326),
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.grey))),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 12.0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(
                'Search',
                style: TextStyle(fontSize: 12.0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text(
                'Your Library',
                style: TextStyle(fontSize: 12.0),
              )),
        ],
        currentIndex: 2,
        fixedColor: Colors.white,
        onTap: null,
      ),
    );
  }

  BoxDecoration buildGradientDecoration() {
    return BoxDecoration(
      gradient: new LinearGradient(
          colors: [Color(0xFFA35D59), Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.center,
          tileMode: TileMode.clamp),
    );
  }

  Padding buildCoverImage() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Image(
        image: AssetImage('assets/images/mozart_cover.jpeg'),
        width: 200.0,
        height: 200.0,
      ),
    );
  }

  Padding buildAlbumTitle() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'This Is Mozart',
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Container buildFollowButton() {
    return Container(
      child: Text(
        'FOLLOW',
        style: TextStyle(color: Colors.white),
      ),
      margin: EdgeInsets.only(top: 16.0),
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.transparent,
          border: Border.all(color: Colors.grey, width: 1.0)),
    );
  }

  Padding buildFollowerCountText() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'BY SPOTIFY • 379,634 FOLLOWERS',
        style: TextStyle(fontSize: 12.0, color: Colors.grey),
      ),
    );
  }

  Container buildShufflePlayButton() {
    return Container(
      child: Text(
        'SHUFFLE PLAY',
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
      padding:
          EdgeInsets.only(left: 40.0, right: 40.0, top: 16.0, bottom: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xFF2AB859),
          border: Border.all(color: Color(0xFF2AB859), width: 1.0)),
    );
  }

  Padding buildDownloadSection() {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              'Download',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Switch(
            value: false,
            onChanged: null,
          ),
        ],
      ),
    );
  }

  List<SongItem> generateSongList() {
    List<SongItem> songItems = [
      SongItem(Song(
          name: 'Le Nozze di Figaro, K. 492: Sinfonia',
          artist: 'Wolfgang Amadeus Mozart, Concerto Köln, René Jacob...')),
      SongItem(Song(
          name: 'Piano Concerto No. 22 in E-Flat Major, K.48...',
          artist: 'Wolfgang Amadeus Mozart, Howard Shelley, London M...')),
      SongItem(Song(
          name: 'Piano Concerto No. 22 in E-Flat Major, K.48...',
          artist: 'Wolfgang Amadeus Mozart, Howard Shelley, London M...')),
      SongItem(Song(
          name: 'Piano Concerto No. 22 in E-Flat Major, K.48...',
          artist: 'Wolfgang Amadeus Mozart, Howard Shelley, London M...')),
    ];
    return songItems;
  }

  @override
  Widget build(BuildContext context) {
    List<SongItem> songItems = generateSongList();

    return Scaffold(
        appBar: buildAppBar(),
        bottomNavigationBar: buildBottomNavigationBar(context),
        body: Container(
          decoration: buildGradientDecoration(),
          child: Center(
            child: Column(
              children: <Widget>[
                buildCoverImage(),
                buildAlbumTitle(),
                buildFollowButton(),
                buildFollowerCountText(),
                buildShufflePlayButton(),
                buildDownloadSection(),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) =>
                        songItems[index],
                    itemCount: songItems.length,
                  ),
                )
              ],
            ),
          ),
        )
        );
  }
}
