tests - exception raising
testnotwfsa075xml
	"Source file: xmltest/not-wf/sa/075.xml"

	(self isSkippableTest: #testnotwfsa075xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa075xml
				documentURI: 'not-wf/sa/075.xml']
		raise: self parserExceptions