tests
testp22pass6xml
	"Source file: oasis/p22pass6.xml"

	(self isSkippableTest: #testp22pass6xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep22pass6xml
				documentURI: 'p22pass6.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions