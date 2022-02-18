# SwiftOpenColor

Swift port of https://yeun.github.io/open-color/

### Installation

**Swift Package Manager**

Using Swift Package Manager, add it as a Swift Package in Xcode 11.0 or later, select File > Swift Packages > Add Package Dependency... and add the repository URL:

https://github.com/swwol/SwiftOpenColor.git

### How To Use

**Begin by importing SwiftOpenColor**

`import SwiftOpenColor`

You can then create UIColors and Colors, using either the initialisers:

`UIColor.init(openColor: .orange0)`

`Color.init(openColor: .orange0)`

or by using the `color` or `uiColor` properties on the OpenColor enum:

`let orange0 = OpenColor.orange0.uiColor`

`let orange0 = OpenColor.orange0.color`

or you can use static properties from the UIColor extension:

`let orange0 = UIcolor.oc_orange0`
