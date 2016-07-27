tests - exception raising
testnotwfsa175xml
	"Source file: xmltest/not-wf/sa/175.xml"

	(self isSkippableTest: #testnotwfsa175xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa175xml
				documentURI: 'not-wf/sa/175.xml']
		raise: self parserExceptions