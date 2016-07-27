tests
testp44pass2xml
	"Source file: oasis/p44pass2.xml"

	(self isSkippableTest: #testp44pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep44pass2xml
				documentURI: 'p44pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions