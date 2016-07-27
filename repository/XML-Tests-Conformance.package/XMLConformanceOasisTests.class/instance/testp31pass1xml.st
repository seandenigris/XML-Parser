tests
testp31pass1xml
	"Source file: oasis/p31pass1.xml"

	(self isSkippableTest: #testp31pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep31pass1xml
				documentURI: 'p31pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions