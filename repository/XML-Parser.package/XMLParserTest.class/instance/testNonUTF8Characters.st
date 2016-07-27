utf8
testNonUTF8Characters

	self shouldnt: [XMLDOMParser parseDocumentFrom: 
		'<foo>Bean BLABLABLA Eidgenössisches Institut für BLABLALBLA</foo>' readStream] raise: Error.
