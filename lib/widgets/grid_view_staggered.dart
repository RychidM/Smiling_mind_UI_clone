import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:smilling_mind/widgets/place_items.dart';
import 'package:smilling_mind/misc/topics.dart';

class MakeStaggeredGrid extends StatelessWidget {
  final placeList = Topics.generateTopics();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MasonryGridView.count(
        itemCount: placeList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return PlaceItems(placeList[index]);
        },
      ),
    );
  }
}
