tests - exception raising
testnotwfsa061xml
	"Source file: xmltest/not-wf/sa/061.xml"

	(self isSkippableTest: #testnotwfsa061xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa061xml
				documentURI: 'not-wf/sa/061.xml']
		raise: self parserExceptions