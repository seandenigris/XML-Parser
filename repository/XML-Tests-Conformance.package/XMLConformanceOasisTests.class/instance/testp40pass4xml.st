tests
testp40pass4xml
	"Source file: oasis/p40pass4.xml"

	(self isSkippableTest: #testp40pass4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep40pass4xml
				documentURI: 'p40pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions