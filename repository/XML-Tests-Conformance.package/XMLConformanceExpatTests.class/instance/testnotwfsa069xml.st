tests - exception raising
testnotwfsa069xml
	"Source file: xmltest/not-wf/sa/069.xml"

	(self isSkippableTest: #testnotwfsa069xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa069xml
				documentURI: 'not-wf/sa/069.xml']
		raise: self parserExceptions