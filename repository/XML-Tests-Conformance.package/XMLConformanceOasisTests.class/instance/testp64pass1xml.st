tests
testp64pass1xml
	"Source file: oasis/p64pass1.xml"

	(self isSkippableTest: #testp64pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep64pass1xml
				documentURI: 'p64pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions