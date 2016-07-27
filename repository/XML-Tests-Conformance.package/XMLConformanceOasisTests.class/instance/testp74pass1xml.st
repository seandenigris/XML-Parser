tests
testp74pass1xml
	"Source file: oasis/p74pass1.xml"

	(self isSkippableTest: #testp74pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep74pass1xml
				documentURI: 'p74pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions