tests
testp42pass2xml
	"Source file: oasis/p42pass2.xml"

	(self isSkippableTest: #testp42pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep42pass2xml
				documentURI: 'p42pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions