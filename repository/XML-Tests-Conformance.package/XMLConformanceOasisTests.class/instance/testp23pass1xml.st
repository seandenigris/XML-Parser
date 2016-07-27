tests
testp23pass1xml
	"Source file: oasis/p23pass1.xml"

	(self isSkippableTest: #testp23pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep23pass1xml
				documentURI: 'p23pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions