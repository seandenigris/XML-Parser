tests - exception raising
testnotwfsa182xml
	"Source file: xmltest/not-wf/sa/182.xml"

	(self isSkippableTest: #testnotwfsa182xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa182xml
				documentURI: 'not-wf/sa/182.xml']
		raise: self parserExceptions