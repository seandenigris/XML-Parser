as yet unclassified
testPrintNameOn
	| stream |

	stream := String new writeStream.
	self nonEmpty printNameOn: stream.
	self assert: stream contents = ('an ', self collectionClass name)