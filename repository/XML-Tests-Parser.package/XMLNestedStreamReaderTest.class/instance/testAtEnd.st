tests
testAtEnd
	| streamReader |

	streamReader := self newStreamReaderOnSourceXML.
	self normalizedSourceXML size timesRepeat: [
		self deny: streamReader atEnd.
		streamReader next].
	self assert: streamReader atEnd.

	streamReader pushBack: self sourceXML.
	self normalizedSourceXML size timesRepeat: [
		self deny: streamReader atEnd.
		streamReader next].

	self assert: streamReader atEnd.
	streamReader pushBack: ''.
	self assert: streamReader atEnd.