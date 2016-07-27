streaming
upToAll: delimitingString
	"Answer a subcollection from the current access position to the occurrence (if any, but not inclusive) of delimitingString. If delimitingString is not in the stream, answer the entire rest of the stream."

	| result |

	self hasNestedStreams
		ifFalse: [
			result := self stream: self stream upToAll: delimitingString.
			result
				ifNil: [self parseError: 'XML no delimiting ' , delimitingString printString , ' found'].
			^result].

	result := self stream: self stream upToAll: delimitingString.
	result
		ifNotNil: [^result].
	result := String streamContents: [:resultStream |
		resultStream nextPutAll: self stream upToEnd.
		self atEnd
			ifTrue: [self parseError: 'XML no delimiting ' , delimitingString printString , ' found'].
		self stream position timesRepeat: [
			self atEnd
				ifFalse: [
					resultStream nextPut: self next]]].
	self pushBack: result.
	^self upToAll: delimitingString