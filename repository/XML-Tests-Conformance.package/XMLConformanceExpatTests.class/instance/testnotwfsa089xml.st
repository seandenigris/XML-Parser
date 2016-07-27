tests - exception raising
testnotwfsa089xml
	"Source file: xmltest/not-wf/sa/089.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa089xml
				documentURI: 'not-wf/sa/089.xml']
		raise: self exceptionClass