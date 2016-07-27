tests
testvalidsa056xml
	"Source file: xmltest/valid/sa/056.xml"

	(self isSkippableTest: #testvalidsa056xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa056xml
				documentURI: 'valid/sa/056.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions