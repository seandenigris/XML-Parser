tests - exception raising
testnotwfsa110xml
	"Source file: xmltest/not-wf/sa/110.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa110xml
				documentURI: 'not-wf/sa/110.xml']
		raise: self exceptionClass