import 'dart:math';

import 'package:api/app/screen/home/components/profile_avatar.dart';
import 'package:api/base/model/post.dart';
import 'package:flutter/material.dart';

class HeaderPostCard extends StatelessWidget {
  final Post post;

  const HeaderPostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Row(
      children: [
        ProfileAvatar(
            imageUrl:
                'https://picsum.photos/200/300?random=${random.nextInt(100)}'),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user?.name ?? 'Not found user',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.public,
                color: Colors.grey[600],
                size: 12.0,
              )
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () => print('More'),
        ),
      ],
    );
  }
}
