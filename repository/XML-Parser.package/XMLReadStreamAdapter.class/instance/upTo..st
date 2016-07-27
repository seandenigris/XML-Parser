accessing
upTo: anObject
	| writeStream |

	writeStream := self newWriteStream.
	[self atEnd
		or: [self peek = anObject]]
		whileFalse: [writeStream nextPut: self next].
	^ writeStream contents.