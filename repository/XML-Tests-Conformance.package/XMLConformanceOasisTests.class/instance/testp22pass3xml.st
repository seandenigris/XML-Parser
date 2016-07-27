tests
testp22pass3xml
	"Source file: oasis/p22pass3.xml"

	(self isSkippableTest: #testp22pass3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep22pass3xml
				documentURI: 'p22pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions