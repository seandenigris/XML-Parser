tests
testp26pass1xml
	"Source file: oasis/p26pass1.xml"

	(self isSkippableTest: #testp26pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep26pass1xml
				documentURI: 'p26pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions