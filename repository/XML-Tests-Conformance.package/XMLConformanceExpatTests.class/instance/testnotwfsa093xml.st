tests - exception raising
testnotwfsa093xml
	"Source file: xmltest/not-wf/sa/093.xml"

	(self isSkippableTest: #testnotwfsa093xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa093xml
				documentURI: 'not-wf/sa/093.xml']
		raise: self parserExceptions