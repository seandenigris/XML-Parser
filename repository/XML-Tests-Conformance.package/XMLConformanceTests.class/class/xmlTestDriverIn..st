as yet unclassified
xmlTestDriverIn: aTailPathString
	"Return an array of VWXMLElements containing the test"
	| document driverText mainElement |

	"Parser can not handle comments in files, but can handle them in strings
	 The above problem has been fixed, so could have the parser open the file.
	 Will keep this code for those that have not installed my fixes"
	driverText := (self filenameAt: aTailPathString) contentsOfEntireFile.
	document := self parserClass 
		processDocumentString: driverText
	 	beforeScanDo: [:parser | parser validate: false].

	"filter out the comments. There is only one top level element in an XML document"
	mainElement := (document selectNodes: [:each | each isElement] ) at: 1.
	^mainElement elementsNamed: 'TEST'