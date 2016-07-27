tests - exception raising
testnotwfnotsa03xml
	"Source file: sun/not-wf/not-sa03.xml"

	self
		should: [
			self
				parse: self class sourcenotwfnotsa03xml
				documentURI: 'not-wf/not-sa03.xml']
		raise: self exceptionClass