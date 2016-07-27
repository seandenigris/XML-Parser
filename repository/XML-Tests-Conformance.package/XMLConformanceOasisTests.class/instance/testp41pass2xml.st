tests
testp41pass2xml
	"Source file: oasis/p41pass2.xml"

	(self isSkippableTest: #testp41pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep41pass2xml
				documentURI: 'p41pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions