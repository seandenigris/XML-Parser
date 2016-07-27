tests - exception raising
testnotwfsgml08xml
	"Source file: sun/not-wf/sgml08.xml"

	(self isSkippableTest: #testnotwfsgml08xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsgml08xml
				documentURI: 'not-wf/sgml08.xml']
		raise: self parserExceptions