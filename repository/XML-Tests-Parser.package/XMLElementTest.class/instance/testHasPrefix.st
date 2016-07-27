tests
testHasPrefix
	| element |

	element := self nodeClass new.
	self deny: element hasPrefix.

	element name: 'one'.
	self deny: element hasPrefix.

	element declarePrefix: 'prefix' uri: 'prefixNS'.
	element name: 'prefix:two'.
	self assert: element hasPrefix.

	element name: 'three'.
	self deny: element hasPrefix.