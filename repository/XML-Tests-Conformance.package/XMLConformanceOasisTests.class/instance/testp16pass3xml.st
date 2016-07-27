tests
testp16pass3xml
	"Source file: oasis/p16pass3.xml"

	(self isSkippableTest: #testp16pass3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep16pass3xml
				documentURI: 'p16pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions