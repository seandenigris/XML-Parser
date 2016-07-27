tests
testp16pass1xml
	"Source file: oasis/p16pass1.xml"

	(self isSkippableTest: #testp16pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep16pass1xml
				documentURI: 'p16pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions