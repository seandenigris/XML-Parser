tests - exception raising
testnotwfsa161xml
	"Source file: xmltest/not-wf/sa/161.xml"

	(self isSkippableTest: #testnotwfsa161xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa161xml
				documentURI: 'not-wf/sa/161.xml']
		raise: self parserExceptions