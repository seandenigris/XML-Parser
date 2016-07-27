tests - exception raising
testnotwfsa120xml
	"Source file: xmltest/not-wf/sa/120.xml"

	(self isSkippableTest: #testnotwfsa120xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa120xml
				documentURI: 'not-wf/sa/120.xml']
		raise: self parserExceptions