tests
testp08pass1xml
	"Source file: oasis/p08pass1.xml"

	(self isSkippableTest: #testp08pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep08pass1xml
				documentURI: 'p08pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions