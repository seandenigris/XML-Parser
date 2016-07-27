tests - exception raising
testnotwfsa048xml
	"Source file: xmltest/not-wf/sa/048.xml"

	(self isSkippableTest: #testnotwfsa048xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa048xml
				documentURI: 'not-wf/sa/048.xml']
		raise: self parserExceptions