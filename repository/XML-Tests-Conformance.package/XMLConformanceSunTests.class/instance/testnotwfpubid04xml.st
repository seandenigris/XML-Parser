tests - exception raising
testnotwfpubid04xml
	"Source file: sun/not-wf/pubid04.xml"

	(self isSkippableTest: #testnotwfpubid04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfpubid04xml
				documentURI: 'not-wf/pubid04.xml']
		raise: self parserExceptions