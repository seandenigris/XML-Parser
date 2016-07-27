tests - exception raising
testnotwfsa183xml
	"Source file: xmltest/not-wf/sa/183.xml"

	(self isSkippableTest: #testnotwfsa183xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa183xml
				documentURI: 'not-wf/sa/183.xml']
		raise: self parserExceptions