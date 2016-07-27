streaming
nextUpTo: delimiter
	| resultStream nextChar |
	resultStream := WriteStream on: (String new: 10).
	[self atEnd or: [(nextChar := self next) == delimiter]]
		whileFalse: [resultStream nextPut: nextChar].
	nextChar == delimiter
		ifFalse: [self parseError: 'XML no delimiting ' , delimiter printString , ' found'].
	^resultStream contents
