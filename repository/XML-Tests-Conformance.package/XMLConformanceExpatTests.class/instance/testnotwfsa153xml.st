tests - exception raising
testnotwfsa153xml
	"Source file: xmltest/not-wf/sa/153.xml"

	(self isSkippableTest: #testnotwfsa153xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa153xml
				documentURI: 'not-wf/sa/153.xml']
		raise: self parserExceptions