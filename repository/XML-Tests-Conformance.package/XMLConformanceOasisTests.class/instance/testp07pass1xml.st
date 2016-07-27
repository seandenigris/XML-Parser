tests
testp07pass1xml
	"Source file: oasis/p07pass1.xml"

	(self isSkippableTest: #testp07pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep07pass1xml
				documentURI: 'p07pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions