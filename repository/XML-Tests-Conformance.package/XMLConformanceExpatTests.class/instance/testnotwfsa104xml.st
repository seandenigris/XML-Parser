tests - exception raising
testnotwfsa104xml
	"Source file: xmltest/not-wf/sa/104.xml"

	(self isSkippableTest: #testnotwfsa104xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa104xml
				documentURI: 'not-wf/sa/104.xml']
		raise: self parserExceptions