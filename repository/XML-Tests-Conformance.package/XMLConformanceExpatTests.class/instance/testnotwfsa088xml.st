tests - exception raising
testnotwfsa088xml
	"Source file: xmltest/not-wf/sa/088.xml"

	(self isSkippableTest: #testnotwfsa088xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa088xml
				documentURI: 'not-wf/sa/088.xml']
		raise: self parserExceptions