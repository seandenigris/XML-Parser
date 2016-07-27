tests - exception raising
testnotwfsa109xml
	"Source file: xmltest/not-wf/sa/109.xml"

	(self isSkippableTest: #testnotwfsa109xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa109xml
				documentURI: 'not-wf/sa/109.xml']
		raise: self parserExceptions