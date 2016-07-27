accessing
upTo: aCharacter
	| writeStream |

	writeStream := self newWriteStream.
	[self atEnd
		or: [self peek == aCharacter]]
		whileFalse: [writeStream nextPut: self next].
	^ writeStream contents.