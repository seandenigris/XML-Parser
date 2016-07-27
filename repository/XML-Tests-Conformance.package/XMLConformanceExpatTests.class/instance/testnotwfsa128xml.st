tests - exception raising
testnotwfsa128xml
	"Source file: xmltest/not-wf/sa/128.xml"

	(self isSkippableTest: #testnotwfsa128xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa128xml
				documentURI: 'not-wf/sa/128.xml']
		raise: self parserExceptions