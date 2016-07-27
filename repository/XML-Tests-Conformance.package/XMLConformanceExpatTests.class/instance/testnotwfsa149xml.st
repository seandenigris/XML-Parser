tests - exception raising
testnotwfsa149xml
	"Source file: xmltest/not-wf/sa/149.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa149xml
				documentURI: 'not-wf/sa/149.xml']
		raise: self exceptionClass