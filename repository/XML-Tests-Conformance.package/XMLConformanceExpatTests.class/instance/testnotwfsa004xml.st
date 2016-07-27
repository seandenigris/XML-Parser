tests - exception raising
testnotwfsa004xml
	"Source file: xmltest/not-wf/sa/004.xml"

	(self isSkippableTest: #testnotwfsa004xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa004xml
				documentURI: 'not-wf/sa/004.xml']
		raise: self parserExceptions