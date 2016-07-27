tests
testKeyAtValue	
	| dict value result |

	dict := self nonEmpty .
	value := dict values anyOne.
	
	result := dict keyAtValue: value.
	self assert: (dict at: result) = value.
	self shouldnt: [dict keyAtValue: self valueNotIn ] raise: Error.