tests - exception raising
testnotwfsgml13xml
	"Source file: sun/not-wf/sgml13.xml"

	(self isSkippableTest: #testnotwfsgml13xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsgml13xml
				documentURI: 'not-wf/sgml13.xml']
		raise: self parserExceptions