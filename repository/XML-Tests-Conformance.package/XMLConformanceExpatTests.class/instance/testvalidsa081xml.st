tests
testvalidsa081xml
	"Source file: xmltest/valid/sa/081.xml"

	(self isSkippableTest: #testvalidsa081xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa081xml
				documentURI: 'valid/sa/081.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions