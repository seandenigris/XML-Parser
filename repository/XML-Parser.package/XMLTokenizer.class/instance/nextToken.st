tokenizing
nextToken
	"return the next XMLnode, or nil if there are no more.
	Fixed to retain leading whitespace when PCDATA is detected."

	| whitespace |
	"branch, depending on what the first character is"
	whitespace := self nextWhitespace.
	streamReader atEnd ifTrue: [self handleEndDocument. ^ nil].
	self checkAndExpandReference: (self parsingMarkup ifTrue: [#dtd] ifFalse: [#content]).
	^ (streamReader peek = $<)
		ifTrue: [self nextNode]
		ifFalse: [
			whitespace ifNotEmpty: [streamReader pushBack: whitespace].
			self nextPCData]