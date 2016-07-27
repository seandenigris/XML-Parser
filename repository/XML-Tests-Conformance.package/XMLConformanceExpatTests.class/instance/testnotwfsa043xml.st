tests - exception raising
testnotwfsa043xml
	"Source file: xmltest/not-wf/sa/043.xml"

	(self isSkippableTest: #testnotwfsa043xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa043xml
				documentURI: 'not-wf/sa/043.xml']
		raise: self parserExceptions