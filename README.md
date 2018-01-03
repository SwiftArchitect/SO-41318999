# Is an emoji available on the current version of the iOS?

Proposed solution uses an `emojiAvailable()` method, packaged in a `Character` extension, returning `true` if the emoji is available.

![Comparing an emoji against ](https://i.stack.imgur.com/jANPz.png)

`emojiAvailable()` compares the character against a known, unavailable character **[?]**, capitalizing on the fact that all unavailable characters share the same bitmap *(a question mark in a box)*.

`Character+Emoji` extension contains a helper method, `png(ofSize fontSize: CGFloat)`, which returns a PNG representation if that `Character`.
