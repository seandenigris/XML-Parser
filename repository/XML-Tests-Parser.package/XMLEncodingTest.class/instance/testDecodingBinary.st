tests
testDecodingBinary
	| source binarySource |
	
	source := self sourceXML.
	binarySource := source asArray collect: [:each | each asciiValue].
	self assert:
		(XMLDOMParser parse: binarySource) printString =
			(XMLDOMParser parse: source) printString.