tests - exception raising
testnotwfsa107xml
	"Source file: xmltest/not-wf/sa/107.xml"

	(self isSkippableTest: #testnotwfsa107xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa107xml
				documentURI: 'not-wf/sa/107.xml']
		raise: self parserExceptions