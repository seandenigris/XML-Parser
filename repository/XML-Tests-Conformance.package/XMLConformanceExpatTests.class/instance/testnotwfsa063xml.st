tests - exception raising
testnotwfsa063xml
	"Source file: xmltest/not-wf/sa/063.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa063xml
				documentURI: 'not-wf/sa/063.xml']
		raise: self exceptionClass