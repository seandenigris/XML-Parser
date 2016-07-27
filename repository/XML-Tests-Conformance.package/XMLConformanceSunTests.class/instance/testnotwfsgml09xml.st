tests - exception raising
testnotwfsgml09xml
	"Source file: sun/not-wf/sgml09.xml"

	(self isSkippableTest: #testnotwfsgml09xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsgml09xml
				documentURI: 'not-wf/sgml09.xml']
		raise: self parserExceptions