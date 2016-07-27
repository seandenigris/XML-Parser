accessing
next: anInteger
	| writeStream |

	writeStream := self newWriteStream.
	1 to: anInteger do: [:i |
		self atEnd
			ifTrue: [^ writeStream contents].
		writeStream nextPut: self next].
	^ writeStream contents.