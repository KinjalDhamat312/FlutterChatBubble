import 'package:flutter/material.dart';

import '../bubble_type.dart';

/// This class is a sample of a custom clipper that creates a visually
/// appealing chat bubble.
///
/// The chat bubble is shaped as shown in the following illustration:
/// ![Image](https://user-images.githubusercontent.com/25680329/218024846-7857310f-8537-4b76-bd1e-f8ef995a0acb.png)
class ChatBubbleClipper4 extends CustomClipper<Path> {
  ///The values assigned to the clipper types [BubbleType.sendBubble] and
  ///[BubbleType.receiverBubble] are distinct.
  final BubbleType? type;

  ///The radius, which creates the curved appearance of the chat widget,
  ///has a default value of 5.
  final double radius;

  /// The "nip" creates the curved shape of the chat widget
  /// and has a default nipSize of 7.
  final double nipSize;

  /// The "nip" creates the curved shape of the chat widget
  /// offset show distance from bottom and has default value 10.
  final double offset;

  ChatBubbleClipper4(
      {this.type, this.radius = 5, this.offset = 10, this.nipSize = 7});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.addRRect(RRect.fromLTRBR(
          0, 0, size.width - nipSize, size.height, Radius.circular(radius)));

      var path2 = Path();
      path2.lineTo(nipSize, nipSize);
      path2.lineTo(0, 2 * nipSize);
      path2.lineTo(0, 0);

      path.addPath(path2,
          Offset(size.width - nipSize, size.height - offset - 2 * nipSize));
    } else {
      path.addRRect(RRect.fromLTRBR(
          nipSize, 0, size.width, size.height, Radius.circular(radius)));

      var path2 = Path();
      path2.lineTo(0, 2 * nipSize);
      path2.lineTo(-nipSize, nipSize);
      path2.lineTo(0, 0);

      path.addPath(path2, Offset(nipSize, size.height - offset - 2 * nipSize));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
