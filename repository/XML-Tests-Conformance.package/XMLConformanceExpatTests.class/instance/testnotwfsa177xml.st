tests - exception raising
testnotwfsa177xml
	"Source file: xmltest/not-wf/sa/177.xml"

	(self isSkippableTest: #testnotwfsa177xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa177xml
				documentURI: 'not-wf/sa/177.xml']
		raise: self parserExceptions