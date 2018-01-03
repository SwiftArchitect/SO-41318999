# Is an emoji available on the current version of the iOS?

An emoji is a character in the Unicode Character space. So the question could read:

> Is a Unicode glyph available on the current version of the iOS?

Proposed solution uses an `unicodeAvailable()` method, packaged in a `Character` extension, returning `true` if the character/emoji is available.

![Comparing an emoji against ](https://i.stack.imgur.com/jANPz.png)

`unicodeAvailable()` compares the character against a known, undefined Unicode character **[?]**, capitalizing on the fact that all unavailable characters share the same bitmap *(a question mark in a box)*.

`Character+Unicode` extension contains a helper method, `png(ofSize fontSize: CGFloat)`, which returns a **PNG** representation if that `Character`.
