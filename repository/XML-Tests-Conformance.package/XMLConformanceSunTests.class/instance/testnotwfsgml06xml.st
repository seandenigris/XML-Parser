tests - exception raising
testnotwfsgml06xml
	"Source file: sun/not-wf/sgml06.xml"

	(self isSkippableTest: #testnotwfsgml06xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsgml06xml
				documentURI: 'not-wf/sgml06.xml']
		raise: self parserExceptions