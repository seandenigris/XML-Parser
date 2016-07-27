tests - exception raising
testnotwfsa113xml
	"Source file: xmltest/not-wf/sa/113.xml"

	(self isSkippableTest: #testnotwfsa113xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa113xml
				documentURI: 'not-wf/sa/113.xml']
		raise: self parserExceptions