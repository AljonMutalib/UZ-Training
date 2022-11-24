import 'package:flutter/material.dart';
import 'post_item.dart';
import 'data/connect.dart';
import 'model/post_model.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key, required this.title});

  final String title;

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  Future<List<PostModel>> getPost() async {
    List<PostModel> post = [];
    var db = MySql();
    var conn = await db.getConnection();
    var result =
        await conn.execute("select ID,title,description from post_tbl");

    result.rowsStream.listen((row) {
      print(row.colByName('title').toString());
      final PostModel mypost = PostModel(
        id: row.colByName('ID').toString(),
        title: row.colByName('title').toString(),
        description: row.colByName('description').toString(),
      );
      post.add(mypost);
    });
    await conn.close();
    return post;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<List<PostModel>>(
          future: getPost(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(
                color: Color(0xFF124a8f),
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.hasError.toString());
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final mypost = snapshot.data![index];
                return PostItem(
                  post: mypost,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
