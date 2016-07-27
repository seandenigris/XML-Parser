tests
testDecodingCharacters
	| xml document  |

	xml := '<?xml version="1.0" encoding="UTF-8"?>
			<test-data>&#{1};</test-data>'.

	document := XMLDOMParser parse: (xml format: (Array with: '8230')).
	self assert: document root contentString first asciiValue = 8230.

	self
		should: [XMLDOMParser parse: (xml format: (Array with: ''))]
		raise: XMLWellFormednessException.
	self
		should: [XMLDOMParser parse: (xml format: (Array with: '0'))]
		raise: XMLWellFormednessException.
	self
		should: [XMLDOMParser parse: (xml format: (Array with: '-1'))]
		raise: XMLWellFormednessException.
	self
		should: [XMLDOMParser parse: (xml format: (Array with: '9:'))]
		raise: XMLWellFormednessException.
	self
		should: [XMLDOMParser parse: (xml format: (Array with: 'xFG'))]
		raise: XMLWellFormednessException.