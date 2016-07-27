validation
validateAttributes: anAttributeDictionary
	| value |

	value := anAttributeDictionary at: name ifAbsent: [^ self].
	self validateValue: value.