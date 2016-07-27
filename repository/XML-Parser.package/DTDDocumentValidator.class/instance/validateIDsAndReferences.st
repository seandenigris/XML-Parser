validation
validateIDsAndReferences
	| ids references |

	ids := Set new.
	references := Set new.
	self allAttributeValidatorsDo: [:each |
		each hasIDs
			ifTrue: [ids addAll: each ids]
			ifFalse: [
				each hasIDRefs
					ifTrue: [references addAll: each idRefs]]].

	references do: [:each |
		(ids includes: each)
			ifFalse: [XMLValidationException signal: 'Invalid ID reference ', each]].