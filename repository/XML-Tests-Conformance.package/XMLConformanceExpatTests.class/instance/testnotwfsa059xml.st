tests - exception raising
testnotwfsa059xml
	"Source file: xmltest/not-wf/sa/059.xml"

	(self isSkippableTest: #testnotwfsa059xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa059xml
				documentURI: 'not-wf/sa/059.xml']
		raise: self parserExceptions