# Flutter Chat Bubble/UI 
Discover the ultimate Flutter widget for creating diverse chat UI designs like WhatsApp, Telegram, and more. With its customizable properties, create stunning chat UI and elevate the user experience in your messaging app. Enhance your Flutter development skills with this top-notch chat UI widget and make a mark in the world of real-time communication.

## Usage
Add this to your package's `pubspec.yaml` file:
```yaml
dependencies:
  flutter_chat_bubble: <latest-version>
```

## Examples
Easily create dynamic chat bubbles with the [ChatBubble](https://github.com/KinjalDhamat312/FlutterChatBubble/blob/master/lib/chat_bubble.dart) widget in Flutter with the extensive range of properties.

### Example 1
![example 1](https://user-images.githubusercontent.com/25680329/218024561-414c8556-8e38-4943-baef-5e0a13a3d498.png)

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

### Example 2
![example 2](https://user-images.githubusercontent.com/25680329/218024725-65aa3b0e-ca87-40ce-b299-148a930bb77a.png)

```dart
ChatBubble(
    clipper: ChatBubbleClipper2(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper2(type: BubbleType.receiverBubble),
  )
```

### Example 3
![example 3](https://user-images.githubusercontent.com/25680329/218024808-4998b701-0159-4fd7-9ac5-4593577587fb.png)


```dart
ChatBubble(
    clipper: ChatBubbleClipper3(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper3(type: BubbleType.receiverBubble),
  )
```  

### Example 4
![example 4](https://user-images.githubusercontent.com/25680329/218024846-7857310f-8537-4b76-bd1e-f8ef995a0acb.png)

```dart
ChatBubble(
    clipper: ChatBubbleClipper4(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper4(type: BubbleType.receiverBubble),
  )
``` 

### Example 5
![example 5](https://user-images.githubusercontent.com/25680329/218024881-5b3d2bc2-f0aa-47e3-b9b0-5286e3f92b8b.png)


```dart
ChatBubble(
    clipper: ChatBubbleClipper5(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper5(type: BubbleType.receiverBubble),
  )
```  

### Example 6
![example 6](https://user-images.githubusercontent.com/25680329/218024913-f5d31b3d-c948-4c9b-986d-4b6f37c5d856.png)


```dart
ChatBubble(
    clipper: ChatBubbleClipper6(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper6(type: BubbleType.receiverBubble),
  )
```  

### Example 7
![example 7](https://user-images.githubusercontent.com/25680329/218024937-51be038d-9945-4b97-a1ae-24a8428a0529.png)


```dart
ChatBubble(
    clipper: ChatBubbleClipper7(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper7(type: BubbleType.receiverBubble),
  )
```  

### Example 8
![example 8](https://user-images.githubusercontent.com/25680329/218025005-22856762-9729-4000-8fdd-008d04e3b1ae.png)


```dart
ChatBubble(
    clipper: ChatBubbleClipper8(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper8(type: BubbleType.receiverBubble),
  )
```  

### Example 9
![example 9](https://user-images.githubusercontent.com/25680329/218025044-acc2c285-f2ea-4150-a991-cc9148ab53a3.png)


```dart
ChatBubble(
    clipper: ChatBubbleClipper9(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper9(type: BubbleType.receiverBubble),
  )
```  

### Example 10
![example 10](https://user-images.githubusercontent.com/25680329/218025070-e764cfc7-3ac7-4ee5-838c-3b52c7ffaa52.png)

```dart
ChatBubble(
    clipper: ChatBubbleClipper10(type: BubbleType.sendBubble),
  )
  
ChatBubble(
    clipper: ChatBubbleClipper10(type: BubbleType.receiverBubble),
  )
```  

## Features and bugs
Submit feature requests and report bugs through the [issue tracker](https://github.com/KinjalDhamat312/FlutterChatBubble/issues).

