validation
validateAttributes: anAttributeDictionary
	| idref |

	idref := anAttributeDictionary at: name ifAbsent: [^ self].
	self validateID: idref.
	self idrefs add: idref.