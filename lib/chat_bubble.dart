library flutter_chat_bubble;

import 'package:flutter/material.dart';

import 'bubble_type.dart';
import 'clippers/chat_bubble_clipper_1.dart';
import 'clippers/chat_bubble_clipper_10.dart';
import 'clippers/chat_bubble_clipper_2.dart';
import 'clippers/chat_bubble_clipper_3.dart';
import 'clippers/chat_bubble_clipper_4.dart';
import 'clippers/chat_bubble_clipper_5.dart';
import 'clippers/chat_bubble_clipper_6.dart';
import 'clippers/chat_bubble_clipper_7.dart';
import 'clippers/chat_bubble_clipper_8.dart';
import 'clippers/chat_bubble_clipper_9.dart';

export 'bubble_type.dart';
export 'clippers/chat_bubble_clipper_1.dart';
export 'clippers/chat_bubble_clipper_10.dart';
export 'clippers/chat_bubble_clipper_2.dart';
export 'clippers/chat_bubble_clipper_3.dart';
export 'clippers/chat_bubble_clipper_4.dart';
export 'clippers/chat_bubble_clipper_5.dart';
export 'clippers/chat_bubble_clipper_6.dart';
export 'clippers/chat_bubble_clipper_7.dart';
export 'clippers/chat_bubble_clipper_8.dart';
export 'clippers/chat_bubble_clipper_9.dart';

/// This class represents the ultimate Flutter widget for creating diverse chat
/// UI designs, similar to those found in apps like WhatsApp and Telegram.
///
/// With its customizable properties, developers can create stunning chat UI
/// that elevates the user experience in their messaging app.
class ChatBubble extends StatelessWidget {
  /// A custom clipper for clipping and shaping widgets in Flutter.
  ///
  /// This clipper can be used to create custom shapes and clips for widgets,
  /// giving you the ability to create unique and visually appealing user interfaces.
  /// To use this clipper, extend the [CustomClipper] class and override the getClip method
  /// to define the shape you wish to clip to.
  ///
  /// This package includes various custom clipper options for creating chat bubbles,
  /// including [ChatBubbleClipper1], [ChatBubbleClipper2], [ChatBubbleClipper3],
  /// [ChatBubbleClipper4], [ChatBubbleClipper5], [ChatBubbleClipper6], [ChatBubbleClipper7],
  /// [ChatBubbleClipper8], [ChatBubbleClipper9], and [ChatBubbleClipper10].
  ///
  /// Additionally, you can customize other clippers based on your specific requirements.
  final CustomClipper? clipper;

  /// The `child` property of the `ChatBubble` is used to specify the widget
  /// contained within the bounds.
  final Widget? child;

  /// Empty space to surround [child].
  final EdgeInsetsGeometry? margin;

  /// The z-coordinate relative to the parent at which to place this physical
  /// object.
  ///
  /// The value is non-negative.
  final double? elevation;

  /// The color used for the background.
  final Color? backGroundColor;

  /// Specifies the color to use for the shadow when the `elevation` is non-zero.
  final Color? shadowColor;

  /// Aligns the `child` widget within the bounds of the `Container`.
  final Alignment? alignment;

  /// Empty space to inscribe inside the [child], if any, is placed inside this
  /// padding.
  ///
  /// If padding is not specified, the default space will be calculated based on
  /// the selected clipper type.
  final EdgeInsetsGeometry? padding;

  ChatBubble(
      {this.clipper,
      this.child,
      this.margin,
      this.elevation,
      this.backGroundColor,
      this.shadowColor,
      this.alignment,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment ?? Alignment.topLeft,
      margin: margin ?? EdgeInsets.all(0),
      child: PhysicalShape(
        clipper: clipper as CustomClipper<Path>,
        elevation: elevation ?? 2,
        color: backGroundColor ?? Colors.blue,
        shadowColor: shadowColor ?? Colors.grey.shade200,
        child: Padding(
          padding: padding ?? setPadding(),
          child: child ?? Container(),
        ),
      ),
    );
  }

  /// Determines the amount of padding to use in the `Container`, based on the
  /// selected `clipper` type.
  EdgeInsets setPadding() {
    if (clipper is ChatBubbleClipper1) {
      if ((clipper as ChatBubbleClipper1).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10);
      }
    } else if (clipper is ChatBubbleClipper2) {
      if ((clipper as ChatBubbleClipper2).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 25);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10);
      }
    } else if (clipper is ChatBubbleClipper3) {
      if ((clipper as ChatBubbleClipper3).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10);
      }
    } else if (clipper is ChatBubbleClipper4) {
      if ((clipper as ChatBubbleClipper4).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10);
      }
    } else if (clipper is ChatBubbleClipper5) {
      if ((clipper as ChatBubbleClipper5).type == BubbleType.sendBubble) {
        return EdgeInsets.all(10);
      } else {
        return EdgeInsets.all(10);
      }
    } else if (clipper is ChatBubbleClipper6) {
      if ((clipper as ChatBubbleClipper6).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 20);
      } else {
        return EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 10);
      }
    } else if (clipper is ChatBubbleClipper7) {
      if ((clipper as ChatBubbleClipper7).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15);
      }
    } else if (clipper is ChatBubbleClipper8) {
      if ((clipper as ChatBubbleClipper8).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 15);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 10);
      }
    } else if (clipper is ChatBubbleClipper9) {
      if ((clipper as ChatBubbleClipper9).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 15);
      } else {
        return EdgeInsets.only(top: 10, bottom: 15, left: 15, right: 10);
      }
    } else if (clipper is ChatBubbleClipper10) {
      if ((clipper as ChatBubbleClipper10).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 15);
      } else {
        return EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 10);
      }
    }

    return EdgeInsets.all(10);
  }
}
