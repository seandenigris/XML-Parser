tests - exception raising
testnotwfsgml04xml
	"Source file: sun/not-wf/sgml04.xml"

	(self isSkippableTest: #testnotwfsgml04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsgml04xml
				documentURI: 'not-wf/sgml04.xml']
		raise: self parserExceptions