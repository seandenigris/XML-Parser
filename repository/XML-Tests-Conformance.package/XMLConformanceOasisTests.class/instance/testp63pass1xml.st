tests
testp63pass1xml
	"Source file: oasis/p63pass1.xml"

	(self isSkippableTest: #testp63pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep63pass1xml
				documentURI: 'p63pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions