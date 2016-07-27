tests - exception raising
testnotwfelement02xml
	"Source file: sun/not-wf/element02.xml"

	(self isSkippableTest: #testnotwfelement02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfelement02xml
				documentURI: 'not-wf/element02.xml']
		raise: self parserExceptions