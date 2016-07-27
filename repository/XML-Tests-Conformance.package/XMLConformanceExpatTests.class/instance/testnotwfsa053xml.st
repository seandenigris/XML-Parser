tests - exception raising
testnotwfsa053xml
	"Source file: xmltest/not-wf/sa/053.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa053xml
				documentURI: 'not-wf/sa/053.xml']
		raise: self exceptionClass