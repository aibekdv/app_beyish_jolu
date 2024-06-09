import 'package:flutter/material.dart';

class SliverContainer extends StatelessWidget {
  const SliverContainer({
    super.key,
    required this.title,
    required this.onTap,
    this.itemCount,
  });
  final List<String> title;
  final void Function(int index) onTap;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 16.00, right: 16.00, top: 16),
      sliver: SliverList.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              minTileHeight: 50,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: Text(
                title[index],
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () => onTap(index),
            );
          },
          separatorBuilder: (context, int index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: itemCount),
    );
  }
}
