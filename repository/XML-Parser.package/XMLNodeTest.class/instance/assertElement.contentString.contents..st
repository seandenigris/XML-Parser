assertions
assertElement: anElement contentString: aContentString contents: aContentArray
	| strings |

	self assert: anElement contentString = aContentString.
	
	strings := (anElement stringNodes collect: [:each | each string]).
	self assert: strings asArray = aContentArray.