import 'package:flutter/material.dart';
import 'package:123200101_kuis/album_detail_page.dart';
import 'package:123200101_kuis/top_album.dart';

class TopAlbumsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Albums'),
      ),
      body: ListView.builder(
        itemCount: topAlbumList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AlbumDetailPage(album: topAlbumList[index]),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: Image.asset(
                  topAlbumList[index].ImageUrl,
                  width: 50,
                  height: 50,
                ),
                title: Text(topAlbumList[index].albumName),
                subtitle: Text(topAlbumList[index].singer),
              ),
            ),
          );
        },
      ),
    );
  }
}
