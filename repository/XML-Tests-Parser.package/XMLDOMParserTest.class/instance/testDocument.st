tests
testDocument
	| document  |

	document := XMLDOMParser parse: self addressBookXML.
	document allElementsDo: [:each | self assert: each document == document].

	document root innerXML: self addressBookXML.
	document allElementsDo: [:each | self assert: each document == document].