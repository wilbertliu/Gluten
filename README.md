# Gluten

[![Build Status](https://travis-ci.org/wilbertliu/Gluten.svg?branch=master)](https://travis-ci.org/wilbertliu/Gluten)
[![Coverage Status](https://coveralls.io/repos/github/wilbertliu/Gluten/badge.svg?branch=master)](https://coveralls.io/github/wilbertliu/Gluten?branch=master)

Unify XIB with its code.

## Background

We always try to generalize some views that would be used in different places throughout the app.
And one approach that we usually do is to make XIB along with its code.

But as we know, the XIB and its code don't automatically *connected*.
And we tend do these things to make them connected :
1. Instantiate the NIB.
2. Add the loaded NIB as a subview.
3. Setting frame or constraints needed.

Always doing those things for every view that we make, I think there's a better way.
What we have to do is calling one function inside our view's code. Yes, just that!
Follow the steps below to see how it goes.

## Installation

### CocoaPods

Add the following line into the `Podfile` :

```
pod 'Gluten'
```

After that, run the following command :

```
$ pod install
```

## Usage

Because `Gluten` was created in extension, we don't need to `import` anything.
Just call `glueSourceAndView()` function inside our view's code. Here's an example :

```swift
import UIKit

class ReusedView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        glueSourceAndView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        glueSourceAndView()
    }

    init() {
        super.init(frame: CGRect.zero)
        glueSourceAndView()
    }
}
```

Note that when we have a class named `ReusedView`, the XIB name must be the same.
**When you're not doing so, `Gluten` would leave those XIB and code unconnected.**

## Support

If you have any feedbacks, feel free to submit a PR! And I'm more than happy to answer your
questions, or maybe just some hi?! To do that, shoot me a DM or tweet [@wilbertliu](https://twitter.com/wilbertliu)

## License

MIT © Wilbert Liu
