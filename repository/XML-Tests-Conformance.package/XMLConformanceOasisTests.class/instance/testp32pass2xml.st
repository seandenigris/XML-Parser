tests
testp32pass2xml
	"Source file: oasis/p32pass2.xml"

	(self isSkippableTest: #testp32pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep32pass2xml
				documentURI: 'p32pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions