tests
testp61pass1xml
	"Source file: oasis/p61pass1.xml"

	(self isSkippableTest: #testp61pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep61pass1xml
				documentURI: 'p61pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions