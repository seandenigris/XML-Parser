tests
testp55pass1xml
	"Source file: oasis/p55pass1.xml"

	(self isSkippableTest: #testp55pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep55pass1xml
				documentURI: 'p55pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions