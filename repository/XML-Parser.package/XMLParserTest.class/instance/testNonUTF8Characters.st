tests-utf8
testNonUTF8Characters

	self shouldnt: [XMLDOMParser parseDocumentFrom: 
		'<foo>Bean BLABLABLA Eidgenössisches Institut für BLABLALBLA</foo>' readStream] raise: Error.

	self shouldnt: [XMLDOMParser parseDocumentFrom: 
		self utf8Example readStream] raise: Error.
