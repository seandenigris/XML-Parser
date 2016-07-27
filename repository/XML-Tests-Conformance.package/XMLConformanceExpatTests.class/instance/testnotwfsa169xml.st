tests - exception raising
testnotwfsa169xml
	"Source file: xmltest/not-wf/sa/169.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa169xml
				documentURI: 'not-wf/sa/169.xml']
		raise: self exceptionClass