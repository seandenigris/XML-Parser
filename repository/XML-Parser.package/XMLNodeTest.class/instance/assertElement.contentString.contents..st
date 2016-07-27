assertions
assertElement: anElement contentString: aContentString contents: aContentArray
	| contentStrings |

	self
		assert: anElement contentString = aContentString;
		assert: anElement characterData = aContentString.
	
	contentStrings := (anElement contents collect: [:each | each string]).
	self assert: contentStrings asArray = aContentArray.