import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'home_notifier.dart';
import 'home_state.dart';
import 'widgets/story_tile.dart';

const homeContentTypes = [HomeContentType.top, HomeContentType.about];

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  void onIndexChange(int index, HomeNotifier notifier) {
    notifier.load();
  }

  @override
  Widget build(context) {
    final state = ref.watch(homeNotifierProvider);
    final notifier = ref.watch(homeNotifierProvider.notifier);
    final currentIndex = homeContentTypes.indexOf(state.contentType);

    return LayoutBuilder(builder: (context, constraint) {
      return _HomeMobileContent(
        state: state,
        currentIndex: currentIndex,
        onNavigate: (index) {
          notifier.load();
        },
        onRefresh: () {
          notifier.refresh();
        },
        onAbout: () {
          notifier.showAbout();
        },
      );
    });
  }
}

class _HomeMobileContent extends StatelessWidget {
  const _HomeMobileContent({
    required this.state,
    required this.onRefresh,
    required this.currentIndex,
    required this.onAbout,
    required this.onNavigate,
  });

  final HomeState state;
  final Function() onRefresh;
  final Function() onAbout;
  final void Function(int) onNavigate;

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hacker News Feed Reader"),
        actions: [
          IconButton(onPressed: onAbout, icon: Icon(Icons.info_outlined)),
          // IconButton(onPressed: () => context.go('/about'), icon: Icon(Icons.info_outlined)),
          IconButton(
            onPressed: onRefresh,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: state.when(
        loading: (_) => const _Loading(),
        data: (_, ids) => _Data(
          ids,
          onRefresh: () async => onRefresh(),
        ),
        error: (_, f) => _Error(f.message),
        about: (_) => const _About(),
      ),
      // bottomNavigationBar: MyNavBar(
      //   currentIndex: currentIndex,
      //   onTap: (index) => onNavigate,
      // ),
    );
  }
}

class _Data extends StatelessWidget {
  const _Data(this.ids, {required this.onRefresh});

  final List<int> ids;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        itemCount: ids.length,
        itemBuilder: (ctx, index) {
          final id = ids[index];
          return StoryTile(id);
        },
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _About extends StatelessWidget {
  const _About();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Add your image widget here
          Image.asset(
            'assets/image/itats_logo.png', // replace with your image path
            width: 200, // adjust the width as needed
            height: 200, // adjust the height as needed
          ),
          SizedBox(height: 50), // add some spacing between image and text
          Text(
            "Aryana Diaz Cakasana - 13.2022.1.01102",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              // add other text styles as needed
            ),
          ),
          SizedBox(height: 16), // add some spacing between image and text
          Text(
            "M.Faari Haidar Ali Hisyaam - 13.2022.1.01129",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              // add other text styles as needed
            ),
          ),
          SizedBox(height: 16), // add some spacing between image and text
          Text(
            "Andhika Dwi Adha P - 13.2022.1.01066",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              // add other text styles as needed
            ),
          ),
        ],
      ),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error(this.message);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
