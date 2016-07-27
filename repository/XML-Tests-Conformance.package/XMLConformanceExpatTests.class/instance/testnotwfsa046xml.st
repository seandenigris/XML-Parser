tests - exception raising
testnotwfsa046xml
	"Source file: xmltest/not-wf/sa/046.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa046xml
				documentURI: 'not-wf/sa/046.xml']
		raise: self exceptionClass