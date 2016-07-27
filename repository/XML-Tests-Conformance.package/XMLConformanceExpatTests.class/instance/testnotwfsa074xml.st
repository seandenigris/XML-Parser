tests - exception raising
testnotwfsa074xml
	"Source file: xmltest/not-wf/sa/074.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa074xml
				documentURI: 'not-wf/sa/074.xml']
		raise: self exceptionClass