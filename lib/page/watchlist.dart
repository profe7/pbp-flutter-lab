import 'package:counter_7/model/fetchJSON.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/detailwatchlist.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';

Color watched = Colors.green;
Color notwatched = Colors.red;

class Watchlist extends StatefulWidget {
  const Watchlist({ Key? key }) : super(key: key);

  @override
  _WatchlistState createState() => _WatchlistState();
}

class _WatchlistState extends State<Watchlist> {

  late Future<List<MyWatchList>> _watchlist;

  @override
  void initState() {
    super.initState();
    _watchlist = fetchJSON();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const UniversalDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<MyWatchList>>(
          future: _watchlist,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(snapshot.data![index].fields.title),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: snapshot.data![index].fields.watched
                              ? watched
                              : notwatched,
                        ),
                      ),
                      trailing: Checkbox(
                        value: snapshot.data![index].fields.watched,
                        onChanged: (value) {
                          setState(() {
                            snapshot.data![index].fields.watched = value!;
                          });
                        },
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailWatchlist(
                              details: snapshot.data![index],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

