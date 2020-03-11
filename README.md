# SplitViewTest

This is a playground-project I use to learn about [UISplitViewController](https://developer.apple.com/documentation/uikit/uisplitviewcontroller) ([on NSHipster](https://nshipster.com/uisplitviewcontroller/)) and how to handle it. Maybe this is interesting to you, too?

The use case is a universal app. On the iPad, the some screens should be visible on the secondary-area, but on iPhone, those should be presented modally instead of being pushed on the navigation stack. To achieve this, I use a [`UISplitViewControllerDelegate`](https://developer.apple.com/documentation/uikit/uisplitviewcontrollerdelegate). `HistoryViewController` and `InputViewController` can be toggled in the primary area.

UI is entirely in code, again. To me, this is much more convenient than fiddling around with Storyboards. Oh, and please don't look at the code, it's pretty quick'n'very dirty and totally not production-ready. Lots a copy'n'paste, ya know.