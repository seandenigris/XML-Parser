tokenizing
nextGeneralEntityReference
	| name |

	((name := self nextName) notEmpty
		and: [streamReader peek == $;])
		ifFalse: [
			streamReader pushBack: name.
			^ $&].
	streamReader next.

	^ self class predefinedEntities
		at: name
		ifAbsent: [
			streamReader pushBack: name, ';'.
			$&].