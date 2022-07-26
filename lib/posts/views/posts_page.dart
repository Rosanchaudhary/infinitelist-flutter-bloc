import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinitelist_bloc/posts/bloc/post_bloc.dart';

import 'package:http/http.dart' as http;

import 'posts_list.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: BlocProvider(
        create: (_)=>PostBloc(httpClient: http.Client())..add(PostFetched()),
        child: PostList(),
        ),
    );
  }
}