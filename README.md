# Flutter Chat Bubble
Flutter widget for creating different types of chat bubble.

## Usage
To use this plugin, add `flutter_chat_bubble` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Examples
[ChatBubble](https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/lib/chat_bubble.dart) widget use for create different chat bubbles. You can use below properties with bubbles.

| Properties | Description |
| ------ | ------ |
| clipper | Different Custom clipper values ChatBubbleClipper1, ChatBubbleClipper2 to ChatBubbleClipper9 |
| child | Child of widget bubble |
| margin | Empty space to surround the decoration. All possible [options](https://api.flutter.dev/flutter/painting/EdgeInsetsGeometry-class.html) |
| backGroundColor | Background color of widget |
| elevation | Elevation of widget |
| shadowColor | Shadow color of widget |
| alignment | Align the child within the widget. All possible [options](https://api.flutter.dev/flutter/painting/Alignment-class.html)|

### Example 1
<img src="https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/screenshots/example%201.png?raw=true" width="500">

```dart
  ChatBubble(
        clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(top: 20),
        backGroundColor: Colors.blue,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(color: Colors.white),
          ),
        ),
      )
  
  ChatBubble(
    clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
    backGroundColor: Color(0xffE7E7ED),
    margin: EdgeInsets.only(top: 20),
    child: Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.7,
      ),
      child: Text(
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
        style: TextStyle(color: Colors.black),
      ),
    ),
  )
```  

| Properties of ChatBubbleClipper1 | Description |
| ------ | ------ |
| type | Values of clipper type BubbleType.sendBubble and BubbleType.receiverBubble |
| radius | Radius of widget |
| nipHeight | Height of nip |
| nipWidth | Width of nip |
| nipRadius | Radius of nip |

### Example 2
<img src="https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/screenshots/example%202.png?raw=true" width="500">

```dart
ChatBubble(
    clipper: ChatBubbleClipper2(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper2(type: BubbleType.receiverBubble),
  )
```

| Properties of ChatBubbleClipper2 | Description |
| ------ | ------ |
| type | Values of clipper type BubbleType.sendBubble and BubbleType.receiverBubble |
| radius | Radius of widget |
| nipHeight | Height of nip |
| nipWidth | Width of nip |
| nipRadius | Radius of nip |

### Example 3
<img src="https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/screenshots/example%203.png?raw=true" width="500">

```dart
ChatBubble(
    clipper: ChatBubbleClipper3(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper3(type: BubbleType.receiverBubble),
  )
```  

| Properties of ChatBubbleClipper3 | Description |
| ------ | ------ |
| type | Values of clipper type BubbleType.sendBubble and BubbleType.receiverBubble |
| radius | Radius of widget |
| nipSize | Size of nip |

### Example 4
<img src="https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/screenshots/example%204.png?raw=true" width="500">

```dart
ChatBubble(
    clipper: ChatBubbleClipper4(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper4(type: BubbleType.receiverBubble),
  )
``` 

| Properties of ChatBubbleClipper4 | Description |
| ------ | ------ |
| type | Values of clipper type BubbleType.sendBubble and BubbleType.receiverBubble |
| radius | Radius of widget |
| nipSize | Size of nip |
| offset | Nip distance from bottom |

### Example 5
<img src="https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/screenshots/example%205.png?raw=true" width="500">

```dart
ChatBubble(
    clipper: ChatBubbleClipper5(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper5(type: BubbleType.receiverBubble),
  )
```  

| Properties of ChatBubbleClipper5 | Description |
| ------ | ------ |
| type | Values of clipper type BubbleType.sendBubble and BubbleType.receiverBubble |
| radius | Radius of widget |
| nipSize | Size of nip |
| sizeRatio | Width ratio of nip |

### Example 6
<img src="https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/screenshots/example%206.png?raw=true" width="500">

```dart
ChatBubble(
    clipper: ChatBubbleClipper6(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper6(type: BubbleType.receiverBubble),
  )
```  

| Properties of ChatBubbleClipper6 | Description |
| ------ | ------ |
| type | Values of clipper type BubbleType.sendBubble and BubbleType.receiverBubble |
| radius | Radius of widget |
| nipSize | Size of nip |
| sizeRatio | Width ratio of nip |

### Example 7
<img src="https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/screenshots/example%207.png?raw=true" width="500">

```dart
ChatBubble(
    clipper: ChatBubbleClipper7(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper7(type: BubbleType.receiverBubble),
  )
```  

| Properties of ChatBubbleClipper7 | Description |
| ------ | ------ |
| type | Values of clipper type BubbleType.sendBubble and BubbleType.receiverBubble |
| radius | Radius of widget |

### Example 8
<img src="https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/screenshots/example%208.png?raw=true" width="500">

```dart
ChatBubble(
    clipper: ChatBubbleClipper8(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper8(type: BubbleType.receiverBubble),
  )
```  

| Properties of ChatBubbleClipper8| Description |
| ------ | ------ |
| type | Values of clipper type BubbleType.sendBubble and BubbleType.receiverBubble |
| radius | Radius of widget |

### Example 9
<img src="https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/screenshots/example%209.png?raw=true" width="500">

```dart
ChatBubble(
    clipper: ChatBubbleClipper9(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper9(type: BubbleType.receiverBubble),
  )
```  

| Properties of ChatBubbleClipper8| Description |
| ------ | ------ |
| type | Values of clipper type BubbleType.sendBubble and BubbleType.receiverBubble |
| radius | Radius of widget |
| secondRadius | Second radius for bottom corner of widget |

