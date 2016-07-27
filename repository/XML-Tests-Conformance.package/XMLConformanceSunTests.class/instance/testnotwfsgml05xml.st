tests - exception raising
testnotwfsgml05xml
	"Source file: sun/not-wf/sgml05.xml"

	(self isSkippableTest: #testnotwfsgml05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsgml05xml
				documentURI: 'not-wf/sgml05.xml']
		raise: self parserExceptions