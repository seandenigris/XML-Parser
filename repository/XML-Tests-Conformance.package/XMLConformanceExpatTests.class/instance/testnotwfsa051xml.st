tests - exception raising
testnotwfsa051xml
	"Source file: xmltest/not-wf/sa/051.xml"

	(self isSkippableTest: #testnotwfsa051xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa051xml
				documentURI: 'not-wf/sa/051.xml']
		raise: self parserExceptions