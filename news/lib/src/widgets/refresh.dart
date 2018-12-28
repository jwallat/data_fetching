import "package:flutter/material.dart";
import "../blocs/stories_provider.dart";

class Refresh extends StatelessWidget {
  final Widget child;

  Refresh({this.child});
  
  Widget build(context) {

    final StoriesBloc bloc = StoriesProvider.of(context);

    return RefreshIndicator(
      child: child,
      onRefresh: () async {
        await bloc.clearCache();
        await bloc.fetchTopIds();
      },
    );
  }
}