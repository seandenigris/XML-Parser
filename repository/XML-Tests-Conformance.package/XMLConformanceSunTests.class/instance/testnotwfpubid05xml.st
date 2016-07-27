tests - exception raising
testnotwfpubid05xml
	"Source file: sun/not-wf/pubid05.xml"

	(self isSkippableTest: #testnotwfpubid05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfpubid05xml
				documentURI: 'not-wf/pubid05.xml']
		raise: self parserExceptions