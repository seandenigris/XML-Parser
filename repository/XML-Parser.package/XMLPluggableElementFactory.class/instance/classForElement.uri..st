accessing
classForElement: aName uri: aUri
	| classesForElement |

	classesForElement :=
		self elementClassesByName
			at: aName
			ifAbsent: [^ nil].

	^ classesForElement
		at: aUri
		ifAbsent: [
			classesForElement
				at: ''
				ifAbsent: [nil]].