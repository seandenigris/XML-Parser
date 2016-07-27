as yet unclassified
runTest: aString 
	| test  |

	test := self parserClass parseDocumentFrom: aString.
	^self canonicalVersion: test.