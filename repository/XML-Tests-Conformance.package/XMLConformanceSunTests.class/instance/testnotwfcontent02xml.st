tests - exception raising
testnotwfcontent02xml
	"Source file: sun/not-wf/content02.xml"

	(self isSkippableTest: #testnotwfcontent02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfcontent02xml
				documentURI: 'not-wf/content02.xml']
		raise: self parserExceptions