tests
testp23pass3xml
	"Source file: oasis/p23pass3.xml"

	(self isSkippableTest: #testp23pass3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep23pass3xml
				documentURI: 'p23pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions