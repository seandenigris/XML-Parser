tests
testp16pass2xml
	"Source file: oasis/p16pass2.xml"

	(self isSkippableTest: #testp16pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep16pass2xml
				documentURI: 'p16pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions