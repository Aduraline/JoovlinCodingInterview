import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:todo/util/constant.dart';
import 'package:todo/view/home_screen.dart';

void main() async {
  await initHiveForFlutter();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    final HttpLink httpLink = HttpLink(
      apiURL,
    );

    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer $accessToken',
    );

    final Link link = authLink.concat(httpLink);

    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(store: HiveStore()),
      ),
    );

    return GraphQLProvider(
        client: client,
        child: MaterialApp(
          title: 'Todo',
          color: Colors.white,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Helvetica',
            textSelectionTheme:
                const TextSelectionThemeData(cursorColor: Colors.black38),
            bottomSheetTheme: BottomSheetThemeData(
                backgroundColor: Colors.white.withOpacity(0)),
          ),
          initialRoute: HomeActivity.id,
          routes: {
            HomeActivity.id: (context) => const HomeActivity(),
          },
        ));
  }
}
