import 'package:flutter/material.dart';

import '../bubble_type.dart';

/// This class is a sample of a custom clipper that creates a visually
/// appealing chat bubble.
///
/// The chat bubble is shaped as shown in the following illustration:
/// ![Image](https://user-images.githubusercontent.com/25680329/218024881-5b3d2bc2-f0aa-47e3-b9b0-5286e3f92b8b.png)
class ChatBubbleClipper5 extends CustomClipper<Path> {
  ///The values assigned to the clipper types [BubbleType.sendBubble] and
  ///[BubbleType.receiverBubble] are distinct.
  final BubbleType? type;

  ///The radius, which creates the curved appearance of the chat widget,
  ///has a default value of 15.
  final double radius;

  /// This displays the radius for the bottom corner curve of the widget,
  /// with a default value of 2.
  final double secondRadius;

  ChatBubbleClipper5({this.type, this.radius = 15, this.secondRadius = 2});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.addRRect(RRect.fromLTRBR(
          0, 0, size.width, size.height, Radius.circular(radius)));
      var path2 = Path();
      path2.addRRect(RRect.fromLTRBAndCorners(0, 0, radius, radius,
          bottomRight: Radius.circular(secondRadius)));
      path.addPath(path2, Offset(size.width - radius, size.height - radius));
    } else {
      path.addRRect(RRect.fromLTRBR(
          0, 0, size.width, size.height, Radius.circular(radius)));
      var path2 = Path();
      path2.addRRect(RRect.fromLTRBAndCorners(0, 0, radius, radius,
          topLeft: Radius.circular(secondRadius)));
      path.addPath(path2, Offset(0, 0));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
