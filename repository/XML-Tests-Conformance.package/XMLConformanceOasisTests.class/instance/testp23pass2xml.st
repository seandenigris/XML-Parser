tests
testp23pass2xml
	"Source file: oasis/p23pass2.xml"

	(self isSkippableTest: #testp23pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep23pass2xml
				documentURI: 'p23pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions