accessing
next: anInteger
	| writeStream i |

	writeStream := self newWriteStream.
	i := anInteger.
	[self atEnd
		or: [i <= 0]]
		whileFalse: [
			writeStream nextPut: self next.
			i := i - 1].
	^ writeStream contents.