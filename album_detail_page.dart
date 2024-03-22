import 'package:flutter/material.dart';
import 'package:123200101_kuis/top_album.dart';

class AlbumDetailPage extends StatelessWidget {
  final Album TopAlbum;

  const AlbumDetailPage({Key? key, required this.TopAlbum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Album Detail'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              TopAlbum.imageUrls,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              TopAlbum.albumName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Artist: ${TopAlbum.singer}'),
            Text('Release Date: ${TopAlbum.releaseDate}'),
            Text('Company: ${TopAlbum.source}'),
            SizedBox(height: 20),
            Text(
              'Tracks:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: TopAlbum.songs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(TopAlbum.songs[index]),
                );
              },
            ),
            SizedBox(height: 20),
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
