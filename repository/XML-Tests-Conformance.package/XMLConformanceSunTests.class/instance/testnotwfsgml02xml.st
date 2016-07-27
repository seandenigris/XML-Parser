tests - exception raising
testnotwfsgml02xml
	"Source file: sun/not-wf/sgml02.xml"

	(self isSkippableTest: #testnotwfsgml02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsgml02xml
				documentURI: 'not-wf/sgml02.xml']
		raise: self parserExceptions