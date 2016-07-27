tests - exception raising
testnotwfsa057xml
	"Source file: xmltest/not-wf/sa/057.xml"

	(self isSkippableTest: #testnotwfsa057xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa057xml
				documentURI: 'not-wf/sa/057.xml']
		raise: self parserExceptions