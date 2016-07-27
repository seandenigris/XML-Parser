tests
testp01pass1xml
	"Source file: oasis/p01pass1.xml"

	(self isSkippableTest: #testp01pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep01pass1xml
				documentURI: 'p01pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions