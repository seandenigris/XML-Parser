tests
testp44pass3xml
	"Source file: oasis/p44pass3.xml"

	(self isSkippableTest: #testp44pass3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep44pass3xml
				documentURI: 'p44pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions