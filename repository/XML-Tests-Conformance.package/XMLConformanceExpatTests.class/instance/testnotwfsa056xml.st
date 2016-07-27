tests - exception raising
testnotwfsa056xml
	"Source file: xmltest/not-wf/sa/056.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa056xml
				documentURI: 'not-wf/sa/056.xml']
		raise: self exceptionClass