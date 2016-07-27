tests - exception raising
testnotwfsa072xml
	"Source file: xmltest/not-wf/sa/072.xml"

	(self isSkippableTest: #testnotwfsa072xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa072xml
				documentURI: 'not-wf/sa/072.xml']
		raise: self parserExceptions