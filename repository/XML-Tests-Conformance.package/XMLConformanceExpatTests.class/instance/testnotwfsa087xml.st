tests - exception raising
testnotwfsa087xml
	"Source file: xmltest/not-wf/sa/087.xml"

	(self isSkippableTest: #testnotwfsa087xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa087xml
				documentURI: 'not-wf/sa/087.xml']
		raise: self parserExceptions