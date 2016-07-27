tests
testvalidsa046xml
	"Source file: xmltest/valid/sa/046.xml"

	(self isSkippableTest: #testvalidsa046xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa046xml
				documentURI: 'valid/sa/046.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions