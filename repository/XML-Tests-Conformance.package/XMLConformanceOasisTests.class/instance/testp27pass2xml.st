tests
testp27pass2xml
	"Source file: oasis/p27pass2.xml"

	(self isSkippableTest: #testp27pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep27pass2xml
				documentURI: 'p27pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions