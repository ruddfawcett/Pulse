# Pulse

Pulse is a simple library that provides a delegate method for changing heart rates from an attached Bluetooth heart rate monitor using Bluetooth LE.

## Usage

To use Pulse, simply use the singleton to create a new instance.

```swift
let pulse = Pulse.sharedInstance
pulse.delegate = self

pulse.startListening()
```

Once Bluetooth is listening for devices, you can then keep up with the changes in heart rate through the delegate:

```swift
extension ViewController: PulseDelegate {
    func manager(didUpdate bpm: Int) {
        label.text = "BPM: \(bpm)"
    }
}
```

Check out the [Xcode project](Example.xcodeproj) for a complete [example](Example).

## Installation

Copy the source from the Pulse folder to your project.

## Attribution

I was first exposed to the intricacies of CoreBluetooth when I was working on [another project of mine](https://github.com/ruddfawcett/Beamy). Wanting to figure out how to use this technology with a heart rate monitor, I found this [excellent tutorial on Ray Wenderlich](https://www.raywenderlich.com/177848/core-bluetooth-tutorial-for-ios-heart-rate-monitor) written by [Jawwad Ahmad](https://github.com/jawwad) and [Steven Daniel](https://github.com/geniesoftstudios).

Pulse simply builds upon their work, abstracting the project into a standalone library with a few modifications.
