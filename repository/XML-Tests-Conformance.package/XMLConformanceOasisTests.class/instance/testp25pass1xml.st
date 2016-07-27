tests
testp25pass1xml
	"Source file: oasis/p25pass1.xml"

	(self isSkippableTest: #testp25pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep25pass1xml
				documentURI: 'p25pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions