tests
testDocument
	| document |

	document := XMLDOMParser parse: self addressBookXML.
	document allNodesDo: [:each | self assert: each document == document].

	document root innerXML: self addressBookXML.
	document allNodesDo: [:each | self assert: each document == document].

	(document removeNode: (document root))
		allNodesDo: [:each | self assert: each document isNil].