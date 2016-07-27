tests - exception raising
testnotwfsa022xml
	"Source file: xmltest/not-wf/sa/022.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa022xml
				documentURI: 'not-wf/sa/022.xml']
		raise: self parserExceptions