import 'package:flutter/material.dart';
import 'package:artists_bazaar/ui/widgets/card.dart';

class UserOfferCard extends StatelessWidget {
  final String title, content, picUrl;
  final VoidCallback onChat, onTap;

  // PostCard constructor
  const UserOfferCard({
    Key? key,
    required this.title,
    required this.content,
    required this.picUrl,
    required this.onChat,
    required this.onTap,
  }) : super(key: key);

  // We create a Stateless widget that contais an AppCard,
  // Passing all the customizable views as parameters
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    return GestureDetector(
      child: AppCard(
        key: const Key("socialCard"),
        title: title,
        content: Text(
          content,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        // topLeftWidget widget as an Avatar
        topLeftWidget: SizedBox(
          height: 48.0,
          width: 48.0,
          child: Center(
            child: CircleAvatar(
              minRadius: 14.0,
              maxRadius: 14.0,
              backgroundImage: NetworkImage(picUrl),
            ),
          ),
        ),
        // topRightWidget widget as an IconButton
        topRightWidget: IconButton(
          icon: Icon(
            Icons.chat_outlined,
            color: primaryColor,
          ),
          onPressed: onChat,
        ),
      ),
      onTap: onTap,
    );
  }
}
