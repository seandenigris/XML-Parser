tests - exception raising
testnotwfsa140xml
	"Source file: xmltest/not-wf/sa/140.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa140xml
				documentURI: 'not-wf/sa/140.xml']
		raise: self exceptionClass