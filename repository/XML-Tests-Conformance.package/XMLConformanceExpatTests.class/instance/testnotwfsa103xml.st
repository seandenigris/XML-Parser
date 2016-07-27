tests - exception raising
testnotwfsa103xml
	"Source file: xmltest/not-wf/sa/103.xml"

	(self isSkippableTest: #testnotwfsa103xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa103xml
				documentURI: 'not-wf/sa/103.xml']
		raise: self parserExceptions