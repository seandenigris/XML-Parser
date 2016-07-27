tests - exception raising
testnotwfpubid02xml
	"Source file: sun/not-wf/pubid02.xml"

	(self isSkippableTest: #testnotwfpubid02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfpubid02xml
				documentURI: 'not-wf/pubid02.xml']
		raise: self parserExceptions