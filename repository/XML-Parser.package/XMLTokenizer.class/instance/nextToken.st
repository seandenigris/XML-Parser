tokenizing
nextToken
	| whitespace |

	state == #atStart
		ifTrue: [
			driver handleStartDocument.
			state := #started].

	whitespace := self nextWhitespace.
	self atEnd
		ifTrue: [^ self].

	self checkAndExpandReference: (self isParsingMarkup ifTrue: [#dtd] ifFalse: [#content]).
	^ (streamReader peek = $<)
		ifTrue: [self nextMarkupToken]
		ifFalse: [
			whitespace ifNotEmpty: [streamReader pushBack: whitespace].
			self nextPCData].