tests
testvalidsa114xml
	"Source file: xmltest/valid/sa/114.xml"

	(self isSkippableTest: #testvalidsa114xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa114xml
				documentURI: 'valid/sa/114.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions