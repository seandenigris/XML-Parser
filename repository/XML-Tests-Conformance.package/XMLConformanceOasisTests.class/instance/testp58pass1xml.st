tests
testp58pass1xml
	"Source file: oasis/p58pass1.xml"

	(self isSkippableTest: #testp58pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep58pass1xml
				documentURI: 'p58pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions