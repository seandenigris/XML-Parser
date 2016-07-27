tokenizing
nextToken
	"return the next XMLnode, or nil if there are no more.
	Fixed to retain leading whitespace when PCDATA is detected."

	|whitespace|
	"branch, depending on what the first character is"
	whitespace := self nextWhitespace.
	self atEnd ifTrue: [self handleEndDocument. ^ nil].
	self checkAndExpandReference: (self parsingMarkup ifTrue: [#dtd] ifFalse: [#content]).
	^self peek = $<
		ifTrue: [self nextNode]
		ifFalse: [whitespace isEmpty
					ifFalse: [self pushBack: whitespace].
				self nextPCData]