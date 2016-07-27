tests
testp40pass1xml
	"Source file: oasis/p40pass1.xml"

	(self isSkippableTest: #testp40pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep40pass1xml
				documentURI: 'p40pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions