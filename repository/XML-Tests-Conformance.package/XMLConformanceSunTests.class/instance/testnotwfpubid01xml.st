tests - exception raising
testnotwfpubid01xml
	"Source file: sun/not-wf/pubid01.xml"

	(self isSkippableTest: #testnotwfpubid01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfpubid01xml
				documentURI: 'not-wf/pubid01.xml']
		raise: self parserExceptions