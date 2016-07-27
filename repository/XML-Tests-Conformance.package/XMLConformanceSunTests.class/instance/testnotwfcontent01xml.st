tests - exception raising
testnotwfcontent01xml
	"Source file: sun/not-wf/content01.xml"

	(self isSkippableTest: #testnotwfcontent01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfcontent01xml
				documentURI: 'not-wf/content01.xml']
		raise: self parserExceptions