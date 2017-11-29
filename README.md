# UIWindowTransitions
### Animate `rootViewController` transitions

This is a small project used to demostrate how to implement UIWindow's `rootViewController` transitions with a little piece of code.
You can found the original article for [this article here](http://danielemargutti.com/animate-uiwindows-rootviewcontroller-transitions).

### Motivation

Sometimes during the lifecycle of an application you may need to change the `rootViewController`  of your main `UIWindow` ; a typical case maybe the transition between the initial on-boarding and the home of the app (ie. a `UITabBarController` ).

In order to handle this edge case you may want to create a top controller (typically an `UINavigationController` with invisible navigation bar) which enable you to push your new container using a standard push animation.

While basically it works fine, the addition of a container used only to handle this single operation is a bit awful to see.

A way better solution is to apply an animated transition (push/pop or slide) to the `rootViewController` set so you will get an animate switch from the current view controller to the new one.

In fact, even if not exposed, you can and its really simple to accomplish via `CoreAnimation` and `CATransition` .

The following code implements a new function as extension of `UIWindow` class; it takes two arguments: the destination controller and options.

As you may imagine the destination controller is the controller you want to set as new `rootViewController`, while options is struct used to group some typical CoreAnimation settings: the animation direction (pop/push/slide from top or bottom), the animation curve (linear, ease in/out), the duration of the animation (by default is 0.25s) and an optional UIView instance used to fade in/out between the old and new view.

### Example

Once implemented you can use the only function exposed to all UIWindow instances called
```swift
public func setRootViewController(_ controller: UIViewController, options: TransitionOptions = TransitionOptions())
```

where:

* `controller`: the destination view controller to set as new `rootViewController`
* `options`: a `TransitionOptions` with the following properties:
	* `duration`: duration of the animation (expressed in `TimeInterval`, seconds, default is `0.25`)
	* `direction`: direction of the transition (`toRight`,`toLeft`,`toTop`,`toBottom`, default is `.toRight`)
	* `style`: animation curve (`linear`,`easeIn`,`easeOut`,`easeInOut`, default is `.linear`)
	* `background`: background view set for fade in-out into the old/new controller (by default is `nil`).

The following code change the ``rootViewController`` using a ease out - slide up animation of 0.4 seconds.

```swift
let wnd = UIApplication.shared.keyWindow
var options = UIWindow.TransitionOptions()
options.direction = .toTop
options.duration = 0.4
options.style = .easeOut
wnd?.setRootViewController(newVC, options: options)
```

If you just need of a simple push (like `UINavigationController`'s push) you can call it without the `options` arg:

```swift
wnd?.setRootViewController(newVC)
```

### Demo

The following demo is available inside the project's demo application.

![](https://github.com/malcommac/UIWindowTransitions/blob/master/UIWindowTransitions_Demo_Animation.gif)

## Installation
You can install UIWindowTransitions using CocoaPods, Carthage and Swift package manager

`pod 'UIWindowTransitions'`

### CocoaPods
use_frameworks!
pod 'UIWindowTransitions'

### Carthage
github 'malcommac/UIWindowTransitions'

### Swift Package Manager
Add UIWindowTransitions as dependency in your `Package.swift`

```swift
import PackageDescription

let package = Package(name: "YourPackage",
dependencies: [
.Package(url: "https://github.com/malcommac/UIWindowTransitions.git", majorVersion: 0),
]
)
```
## Credits & License
UIWindowTransitions was created by [Daniele Margutti](http://www.danielemargutti.com/).

As open source creation any help is welcome!

The code of this library is licensed under MIT License; you can use it in commercial products without any limitation.

