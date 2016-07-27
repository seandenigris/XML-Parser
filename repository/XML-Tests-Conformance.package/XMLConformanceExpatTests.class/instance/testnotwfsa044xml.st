tests - exception raising
testnotwfsa044xml
	"Source file: xmltest/not-wf/sa/044.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa044xml
				documentURI: 'not-wf/sa/044.xml']
		raise: self exceptionClass