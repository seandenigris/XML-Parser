tests
testDecodingCharacters
	self assert:
		(HTMLParser parse: '&#60; &#x3C &#0; &#-1 &#invalid; &#invalid &#')
			contentString = '< < &#0; &#-1 &#invalid; &#invalid &#'.