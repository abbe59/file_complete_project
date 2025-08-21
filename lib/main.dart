import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_tuterual/core/app_router.dart';
import 'package:flutter_login_tuterual/features/posts/data/datasources/remote/post_remote_data_source.dart';
import 'package:flutter_login_tuterual/features/posts/presentation/bloc/post_bloc.dart';
import 'package:flutter_login_tuterual/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostBloc>(
          create: (_) => PostBloc(getIt<PostRemoteDataSource>()),
        ),
        // يمكنك إضافة BLoCs أخرى هنا إذا لزم
      ],
      child: MaterialApp(
        title: 'Hospital Management',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: AppRouter.home,
      ),
    );
  }
}
