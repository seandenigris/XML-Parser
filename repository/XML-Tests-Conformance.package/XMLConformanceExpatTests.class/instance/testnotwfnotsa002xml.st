tests - exception raising
testnotwfnotsa002xml
	"Source file: xmltest/not-wf/not-sa/002.xml"

	self
		should: [
			self
				parse: self class sourcenotwfnotsa002xml
				documentURI: 'not-wf/not-sa/002.xml']
		raise: self exceptionClass