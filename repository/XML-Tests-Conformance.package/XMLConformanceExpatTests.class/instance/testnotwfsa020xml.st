tests - exception raising
testnotwfsa020xml
	"Source file: xmltest/not-wf/sa/020.xml"

	(self isSkippableTest: #testnotwfsa020xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa020xml
				documentURI: 'not-wf/sa/020.xml']
		raise: self parserExceptions