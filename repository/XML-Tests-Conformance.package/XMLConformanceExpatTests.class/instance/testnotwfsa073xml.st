tests - exception raising
testnotwfsa073xml
	"Source file: xmltest/not-wf/sa/073.xml"

	(self isSkippableTest: #testnotwfsa073xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa073xml
				documentURI: 'not-wf/sa/073.xml']
		raise: self parserExceptions