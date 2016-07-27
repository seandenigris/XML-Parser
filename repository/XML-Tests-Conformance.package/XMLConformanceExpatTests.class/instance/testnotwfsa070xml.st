tests - exception raising
testnotwfsa070xml
	"Source file: xmltest/not-wf/sa/070.xml"

	(self isSkippableTest: #testnotwfsa070xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa070xml
				documentURI: 'not-wf/sa/070.xml']
		raise: self parserExceptions