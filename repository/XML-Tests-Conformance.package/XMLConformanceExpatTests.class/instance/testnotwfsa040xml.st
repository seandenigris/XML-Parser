tests - exception raising
testnotwfsa040xml
	"Source file: xmltest/not-wf/sa/040.xml"

	(self isSkippableTest: #testnotwfsa040xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa040xml
				documentURI: 'not-wf/sa/040.xml']
		raise: self parserExceptions