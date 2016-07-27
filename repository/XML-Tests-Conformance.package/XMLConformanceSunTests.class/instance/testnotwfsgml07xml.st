tests - exception raising
testnotwfsgml07xml
	"Source file: sun/not-wf/sgml07.xml"

	(self isSkippableTest: #testnotwfsgml07xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsgml07xml
				documentURI: 'not-wf/sgml07.xml']
		raise: self parserExceptions