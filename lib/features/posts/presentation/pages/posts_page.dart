import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_tuterual/features/posts/presentation/bloc/post_bloc.dart';
import 'package:flutter_login_tuterual/features/posts/presentation/bloc/post_state.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Posts")),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(
              child: ElevatedButton(
                onPressed: () =>
                    context.read<PostBloc>().add(const PostEvent.fetchPosts()),
                child: const Text("Load Posts"),
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (posts) => ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) => PostTile(post: posts[index]),
            ),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
