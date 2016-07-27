tests - exception raising
testnotwfsa125xml
	"Source file: xmltest/not-wf/sa/125.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa125xml
				documentURI: 'not-wf/sa/125.xml']
		raise: self exceptionClass