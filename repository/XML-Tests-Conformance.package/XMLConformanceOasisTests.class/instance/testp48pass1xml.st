tests
testp48pass1xml
	"Source file: oasis/p48pass1.xml"

	(self isSkippableTest: #testp48pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep48pass1xml
				documentURI: 'p48pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions