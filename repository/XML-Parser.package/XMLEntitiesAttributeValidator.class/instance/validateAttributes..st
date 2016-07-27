validation
validateAttributes: anAttributeDictionary
	(Character space split: (anAttributeDictionary at: name ifAbsent: [^ self]))
		do: [:each | self validateEntityReference: each]