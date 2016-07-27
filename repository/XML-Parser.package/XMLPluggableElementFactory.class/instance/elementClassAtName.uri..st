private
elementClassAtName: aName uri: aURI
	aURI size > 0
		ifTrue: [
			^ self elementClasses
				at: aName -> aURI
				ifAbsent: [
					self elementClasses
						at: aName 
						ifAbsent: [nil]]]
		ifFalse: [
			^ self elementClasses
				at: aName
				ifAbsent: [nil]]