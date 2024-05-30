import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  await Future.delayed(const Duration(seconds: 2));

  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'userId': int userId,
        'id': int id,
        'title': String title,
      } =>
        Album(
          userId: userId,
          id: id,
          title: title,
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}

// void main() => runApp(const AlbumPage());

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  // Future<Album>? futureAlbum;
  Album? album;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    // futureAlbum = fetchAlbum();
  }

  Future<void> loadAlbum() async {
    try {
      setState(() {
        isLoading = true;
      });
      Album album = await fetchAlbum();
      setState(() {
        this.album = album;
      });
    } catch(e) {

    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: loadAlbum,
                // onPressed: () {
                // setState(() {
                //   futureAlbum = fetchAlbum();
                // });
                // },
                icon: const Icon(Icons.download)),
          ],
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
            child: isLoading
                ? const CircularProgressIndicator()
                : (album == null
                    ? const Text('not started')
                    : Text(album!.title))
            // ), child: FutureBuilder<Album>(
            //   future: futureAlbum,
            //   builder: (context, snapshot) {
            //     if (snapshot.connectionState == ConnectionState.none) {
            //       return const Text('not started');
            //     }
            //     if (snapshot.hasData) {
            //       return Text(snapshot.data!.title);
            //     } else if (snapshot.hasError) {
            //       return Text('${snapshot.error}');
            //     }
            //
            //     // By default, show a loading spinner.
            //     return const CircularProgressIndicator();
            //   },
            // ),
            // ),
            ));
  }
}
