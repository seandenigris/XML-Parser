tests
testp11pass1xml
	"Source file: oasis/p11pass1.xml"

	(self isSkippableTest: #testp11pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep11pass1xml
				documentURI: 'p11pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions