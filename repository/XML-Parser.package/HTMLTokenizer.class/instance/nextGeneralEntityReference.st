tokenizing
nextGeneralEntityReference
	| name |

	name := self nextName.
	self expectNext: $;.
	^ self class predefinedEntities
		at: name
		ifAbsent: [nil].