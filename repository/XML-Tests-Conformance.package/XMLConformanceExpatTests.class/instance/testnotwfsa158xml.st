tests - exception raising
testnotwfsa158xml
	"Source file: xmltest/not-wf/sa/158.xml"

	(self isSkippableTest: #testnotwfsa158xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa158xml
				documentURI: 'not-wf/sa/158.xml']
		raise: self parserExceptions