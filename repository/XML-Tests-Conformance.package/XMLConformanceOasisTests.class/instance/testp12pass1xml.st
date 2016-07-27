tests
testp12pass1xml
	"Source file: oasis/p12pass1.xml"

	(self isSkippableTest: #testp12pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep12pass1xml
				documentURI: 'p12pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions