tests - exception raising
testnotwfsa058xml
	"Source file: xmltest/not-wf/sa/058.xml"

	(self isSkippableTest: #testnotwfsa058xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa058xml
				documentURI: 'not-wf/sa/058.xml']
		raise: self parserExceptions