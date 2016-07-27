tests - exception raising
testnotwfsa080xml
	"Source file: xmltest/not-wf/sa/080.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa080xml
				documentURI: 'not-wf/sa/080.xml']
		raise: self exceptionClass