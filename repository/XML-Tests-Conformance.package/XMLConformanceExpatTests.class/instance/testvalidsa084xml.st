tests
testvalidsa084xml
	"Source file: xmltest/valid/sa/084.xml"

	(self isSkippableTest: #testvalidsa084xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa084xml
				documentURI: 'valid/sa/084.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions