tests - exception raising
testnotwfsa012xml
	"Source file: xmltest/not-wf/sa/012.xml"

	(self isSkippableTest: #testnotwfsa012xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa012xml
				documentURI: 'not-wf/sa/012.xml']
		raise: self parserExceptions