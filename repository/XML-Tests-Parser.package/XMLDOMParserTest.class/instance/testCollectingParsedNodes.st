tests
testCollectingParsedNodes
	| document firstPerson allNames |
	"self debug: #testParsing"

	document := XMLDOMParser parse: self addressBookXML.
	firstPerson := document findElementNamed: 'person'.

	allNames := #('person' 'contact-info' 'address' 'job-info' 'manager').
	self
		assert: (firstPerson allElementsCollect: [:each | each name]) asArray = allNames;
		assert: (firstPerson allElements collect: [:each | each name]) asArray = allNames;
		assert: (firstPerson nodesCollect: [:each | each name]) asArray = allNames allButFirst;
		assert: (firstPerson nodes collect: [:each | each name]) asArray = allNames allButFirst.