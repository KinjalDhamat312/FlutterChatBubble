import 'package:flutter/material.dart';

import '../bubble_type.dart';

/// This class is a sample of a custom clipper that creates a visually
/// appealing chat bubble.
///
/// The chat bubble is shaped as shown in the following illustration:
/// ![Image](https://user-images.githubusercontent.com/25680329/218024561-414c8556-8e38-4943-baef-5e0a13a3d498.png)
class ChatBubbleClipper1 extends CustomClipper<Path> {
  ///The values assigned to the clipper types [BubbleType.sendBubble] and
  ///[BubbleType.receiverBubble] are distinct.
  final BubbleType? type;

  ///The radius, which creates the curved appearance of the chat widget,
  ///has a default value of 10.
  final double radius;

  /// The "nip" creates the curved shape of the chat widget
  /// and has a default nipHeight of 10.
  final double nipHeight;

  /// The "nip" creates the curved shape of the chat widget
  /// and has a default nipWidth of 15.
  final double nipWidth;

  /// The "nip" creates the curved shape of the chat widget
  /// and has a default nipRadius of 3.
  final double nipRadius;

  ChatBubbleClipper1(
      {this.type,
      this.radius = 10,
      this.nipHeight = 10,
      this.nipWidth = 15,
      this.nipRadius = 3});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.lineTo(size.width - nipRadius, 0);
      path.arcToPoint(Offset(size.width - nipRadius, nipRadius),
          radius: Radius.circular(nipRadius));
      path.lineTo(size.width - nipWidth, nipHeight);
      path.lineTo(size.width - nipWidth, size.height - radius);
      path.arcToPoint(Offset(size.width - nipWidth - radius, size.height),
          radius: Radius.circular(radius));
      path.lineTo(radius, size.height);
      path.arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius));
      path.lineTo(0, radius);
      path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
    } else {
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius));
      path.lineTo(size.width, size.height - radius);
      path.arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius));
      path.lineTo(radius + nipWidth, size.height);
      path.arcToPoint(Offset(nipWidth, size.height - radius),
          radius: Radius.circular(radius));
      path.lineTo(nipWidth, nipHeight);
      path.lineTo(nipRadius, nipRadius);
      path.arcToPoint(Offset(nipRadius, 0), radius: Radius.circular(nipRadius));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
