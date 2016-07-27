tests - exception raising
testnotwfpubid03xml
	"Source file: sun/not-wf/pubid03.xml"

	(self isSkippableTest: #testnotwfpubid03xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfpubid03xml
				documentURI: 'not-wf/pubid03.xml']
		raise: self parserExceptions