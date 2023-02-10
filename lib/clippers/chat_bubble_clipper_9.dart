import 'package:flutter/material.dart';

import '../bubble_type.dart';

/// This class is a sample of a custom clipper that creates a visually
/// appealing chat bubble.
///
/// The chat bubble is shaped as shown in the following illustration:
/// ![Image](https://user-images.githubusercontent.com/25680329/218025044-acc2c285-f2ea-4150-a991-cc9148ab53a3.png)
class ChatBubbleClipper9 extends CustomClipper<Path> {
  ///The values assigned to the clipper types [BubbleType.sendBubble] and
  ///[BubbleType.receiverBubble] are distinct.
  final BubbleType? type;

  ///The radius, which creates the curved appearance of the chat widget,
  ///has a default value of 15.
  final double radius;

  /// The "nip" creates the curved shape of the chat widget
  /// and has a default nipSize of 8.
  final double nipSize;

  /// The "nip" shapes the curve of the chat widget, and the
  /// width ratio is controlled by this property, which has a default value of 3.
  final double sizeRatio;

  ChatBubbleClipper9(
      {this.type, this.radius = 15, this.nipSize = 8, this.sizeRatio = 3});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.lineTo(size.width - radius - nipSize, 0);
      path.arcToPoint(Offset(size.width - nipSize, radius),
          radius: Radius.circular(radius));

      path.lineTo(size.width - nipSize, size.height - sizeRatio * nipSize);

      path.quadraticBezierTo(
          size.width - nipSize, size.height - nipSize, size.width, size.height);
      path.quadraticBezierTo(size.width - nipSize, size.height - nipSize,
          size.width - sizeRatio * nipSize, size.height - nipSize);

      path.lineTo(radius, size.height - nipSize);

      path.arcToPoint(Offset(0, size.height - radius - nipSize),
          radius: Radius.circular(radius));

      path.lineTo(0, radius);
      path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
    } else {
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius));
      path.lineTo(size.width, size.height - radius - nipSize);
      path.arcToPoint(Offset(size.width - radius, size.height - nipSize),
          radius: Radius.circular(radius));

      path.lineTo(sizeRatio * nipSize, size.height - nipSize);

      path.quadraticBezierTo(nipSize, size.height - nipSize, 0, size.height);
      path.quadraticBezierTo(nipSize, size.height - nipSize, nipSize,
          size.height - sizeRatio * nipSize);

      path.lineTo(nipSize, radius);
      path.arcToPoint(Offset(radius + nipSize, 0),
          radius: Radius.circular(radius));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
