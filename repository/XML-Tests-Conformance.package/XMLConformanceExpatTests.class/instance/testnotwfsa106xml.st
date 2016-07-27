tests - exception raising
testnotwfsa106xml
	"Source file: xmltest/not-wf/sa/106.xml"

	(self isSkippableTest: #testnotwfsa106xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa106xml
				documentURI: 'not-wf/sa/106.xml']
		raise: self parserExceptions