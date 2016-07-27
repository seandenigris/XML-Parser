tests
testp41pass1xml
	"Source file: oasis/p41pass1.xml"

	(self isSkippableTest: #testp41pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep41pass1xml
				documentURI: 'p41pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions