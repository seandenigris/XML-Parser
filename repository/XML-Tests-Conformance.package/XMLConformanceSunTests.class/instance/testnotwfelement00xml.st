tests - exception raising
testnotwfelement00xml
	"Source file: sun/not-wf/element00.xml"

	(self isSkippableTest: #testnotwfelement00xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfelement00xml
				documentURI: 'not-wf/element00.xml']
		raise: self parserExceptions