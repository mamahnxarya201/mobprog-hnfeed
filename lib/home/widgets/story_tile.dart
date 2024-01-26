import 'package:hnread/common/time_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/item/item_notifier.dart';

import '../../common/extract_domain.dart';
import '../../models/item.dart';

class StoryTile extends ConsumerWidget {
  final int id;

  const StoryTile(this.id, {super.key});

  @override
  Widget build(context, ref) {
    final state = ref.watch(itemFamily(id));

    return state.when(
      loading: () => const StoryCardPlaceholder(),
      data: (item) => StoryCardContent(
        item,
      ),
      error: (message) => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(message),
      ),
    );
  }
}

class StoryCardContent extends StatelessWidget {
  const StoryCardContent(
    this.item, {
    super.key,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: item.title ?? "no title",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text:
                            " (${extractDomain(item.url ?? "") ?? "self.hackernews"})",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.bodySmall!,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_circle_up_rounded,
                        size: 14,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text((item.score ?? 0).toString()),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.chat_rounded,
                        size: 14,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text((item.descendantCount ?? 0).toString()),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.access_time_rounded,
                        size: 14,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text(formatTime(item.createdAt)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
        ),
      ],
    );
  }
}

class StoryCardPlaceholder extends StatelessWidget {
  const StoryCardPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
          height: 20,
          color: Theme.of(context).colorScheme.surfaceVariant,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 128,
            height: 16,
            color: Theme.of(context).colorScheme.surfaceVariant,
          ),
        ),
      ),
      trailing: Container(
        width: 24,
        height: 32,
        color: Colors.grey.shade300,
      ),
    );
  }
}
