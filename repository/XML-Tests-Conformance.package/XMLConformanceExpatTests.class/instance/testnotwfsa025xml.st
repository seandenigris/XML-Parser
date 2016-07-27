tests - exception raising
testnotwfsa025xml
	"Source file: xmltest/not-wf/sa/025.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa025xml
				documentURI: 'not-wf/sa/025.xml']
		raise: self exceptionClass