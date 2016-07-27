tests
testp15pass1xml
	"Source file: oasis/p15pass1.xml"

	(self isSkippableTest: #testp15pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep15pass1xml
				documentURI: 'p15pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions