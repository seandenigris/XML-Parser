tests
testp01pass2xml
	"Source file: oasis/p01pass2.xml"

	(self isSkippableTest: #testp01pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep01pass2xml
				documentURI: 'p01pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions