tests - exception raising
testnotwfsa097xml
	"Source file: xmltest/not-wf/sa/097.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa097xml
				documentURI: 'not-wf/sa/097.xml']
		raise: self exceptionClass