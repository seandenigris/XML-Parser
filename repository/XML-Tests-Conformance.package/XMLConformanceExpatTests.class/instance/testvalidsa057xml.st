tests
testvalidsa057xml
	"Source file: xmltest/valid/sa/057.xml"

	(self isSkippableTest: #testvalidsa057xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa057xml
				documentURI: 'valid/sa/057.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions