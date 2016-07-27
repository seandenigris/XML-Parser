tests
testReadStream
	| list stream elements |

	list := self listWithElements.
	stream := list readStream.
	self assert: (stream isKindOf: ReadStream).

	elements := self listElements asOrderedCollection.
	[stream atEnd]
		whileFalse: [self assert: stream next = elements removeFirst].
	self assert: elements isEmpty.