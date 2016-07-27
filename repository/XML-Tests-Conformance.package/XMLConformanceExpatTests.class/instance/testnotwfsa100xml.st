tests - exception raising
testnotwfsa100xml
	"Source file: xmltest/not-wf/sa/100.xml"

	(self isSkippableTest: #testnotwfsa100xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa100xml
				documentURI: 'not-wf/sa/100.xml']
		raise: self parserExceptions