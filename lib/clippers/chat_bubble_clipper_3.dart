import 'package:flutter/material.dart';

import '../bubble_type.dart';

/// This class is a sample of a custom clipper that creates a visually
/// appealing chat bubble.
///
/// The chat bubble is shaped as shown in the following illustration:
/// ![Image](https://user-images.githubusercontent.com/25680329/218024808-4998b701-0159-4fd7-9ac5-4593577587fb.png)
class ChatBubbleClipper3 extends CustomClipper<Path> {
  ///The values assigned to the clipper types [BubbleType.sendBubble] and
  ///[BubbleType.receiverBubble] are distinct.
  final BubbleType? type;

  ///The radius, which creates the curved appearance of the chat widget,
  ///has a default value of 15.
  final double radius;

  /// The "nip" creates the curved shape of the chat widget
  /// and has a default nipSize of 7.
  final double nipSize;

  ChatBubbleClipper3({this.type, this.radius = 15, this.nipSize = 7});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.moveTo(radius, 0);
      path.lineTo(size.width - radius - nipSize, 0);
      path.arcToPoint(Offset(size.width - nipSize, radius),
          radius: Radius.circular(radius));

      path.lineTo(size.width - nipSize, size.height - nipSize);

      path.arcToPoint(Offset(size.width, size.height),
          radius: Radius.circular(nipSize), clockwise: false);

      path.arcToPoint(Offset(size.width - 2 * nipSize, size.height - nipSize),
          radius: Radius.circular(2 * nipSize));

      path.arcToPoint(Offset(size.width - 4 * nipSize, size.height),
          radius: Radius.circular(2 * nipSize));

      path.lineTo(radius, size.height);
      path.arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius));
      path.lineTo(0, radius);
      path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
    } else {
      path.moveTo(radius, 0);
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius));

      path.lineTo(size.width, size.height - radius);

      path.arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius));

      path.lineTo(4 * nipSize, size.height);
      path.arcToPoint(Offset(2 * nipSize, size.height - nipSize),
          radius: Radius.circular(2 * nipSize));

      path.arcToPoint(Offset(0, size.height),
          radius: Radius.circular(2 * nipSize));

      path.arcToPoint(Offset(nipSize, size.height - nipSize),
          radius: Radius.circular(nipSize), clockwise: false);

      path.lineTo(nipSize, radius);
      path.arcToPoint(Offset(radius + nipSize, 0),
          radius: Radius.circular(radius));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
