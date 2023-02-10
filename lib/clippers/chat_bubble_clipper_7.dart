import 'package:flutter/material.dart';

import '../bubble_type.dart';

/// This class is a sample of a custom clipper that creates a visually
/// appealing chat bubble.
///
/// The chat bubble is shaped as shown in the following illustration:
/// ![Image](https://user-images.githubusercontent.com/25680329/218024937-51be038d-9945-4b97-a1ae-24a8428a0529.png)
class ChatBubbleClipper7 extends CustomClipper<Path> {
  ///The values assigned to the clipper types [BubbleType.sendBubble] and
  ///[BubbleType.receiverBubble] are distinct.
  final BubbleType? type;

  ///The radius, which creates the curved appearance of the chat widget,
  ///has a default value of 25.
  final double radius;

  ChatBubbleClipper7({this.type, this.radius = 25});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.addRRect(RRect.fromLTRBAndCorners(0, 0, size.width, size.height,
          topLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius)));
    } else {
      path.addRRect(RRect.fromLTRBAndCorners(0, 0, size.width, size.height,
          topRight: Radius.circular(radius),
          bottomLeft: Radius.circular(radius)));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
