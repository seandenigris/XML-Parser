tests
testp44pass1xml
	"Source file: oasis/p44pass1.xml"

	(self isSkippableTest: #testp44pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep44pass1xml
				documentURI: 'p44pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions