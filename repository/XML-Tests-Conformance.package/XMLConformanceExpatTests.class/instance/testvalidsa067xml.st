tests
testvalidsa067xml
	"Source file: xmltest/valid/sa/067.xml"

	(self isSkippableTest: #testvalidsa067xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa067xml
				documentURI: 'valid/sa/067.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions