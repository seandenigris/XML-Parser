tests
testp47pass1xml
	"Source file: oasis/p47pass1.xml"

	(self isSkippableTest: #testp47pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep47pass1xml
				documentURI: 'p47pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions