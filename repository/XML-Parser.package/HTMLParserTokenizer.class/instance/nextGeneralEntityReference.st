tokenizing
nextGeneralEntityReference
	| name character |

	character :=
		self class predefinedEntities
			at: (name := self nextName)
			ifAbsent: [
				streamReader pushBack: name.
				^ $&].
	streamReader peek == $; "; is optional"
		ifTrue: [streamReader next].
	^ character.