tests
testWriteStream
	| list stream |

	list := self emptyList.
	stream := list writeStream.
	self assert: (stream isKindOf: WriteStream).

	self listElements do: [:each | stream nextPut: each].
	self assert:
		(stream contents) asOrderedCollection =
			self listElements asOrderedCollection.