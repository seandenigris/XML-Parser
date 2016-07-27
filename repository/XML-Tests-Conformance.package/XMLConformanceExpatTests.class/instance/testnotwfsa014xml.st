tests - exception raising
testnotwfsa014xml
	"Source file: xmltest/not-wf/sa/014.xml"

	(self isSkippableTest: #testnotwfsa014xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa014xml
				documentURI: 'not-wf/sa/014.xml']
		raise: self parserExceptions