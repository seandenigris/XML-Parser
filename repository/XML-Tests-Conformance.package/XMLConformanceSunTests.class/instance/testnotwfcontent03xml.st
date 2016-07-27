tests - exception raising
testnotwfcontent03xml
	"Source file: sun/not-wf/content03.xml"

	(self isSkippableTest: #testnotwfcontent03xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfcontent03xml
				documentURI: 'not-wf/content03.xml']
		raise: self parserExceptions