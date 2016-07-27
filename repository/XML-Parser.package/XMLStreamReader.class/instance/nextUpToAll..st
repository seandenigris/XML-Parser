streaming
nextUpToAll: delimitingString
	| string |
	self unpeek.
	string := self upToAll: delimitingString.
	string
		ifNil: [self parseError: 'XML no delimiting ' , delimitingString printString , ' found'].
	^string.