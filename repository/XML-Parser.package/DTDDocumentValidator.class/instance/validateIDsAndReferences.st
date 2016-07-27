validation
validateIDsAndReferences
	| ids references |

	ids := Set new.
	references := Set new.
	self allAttributeValidatorsDo: [:each |
		(each respondsTo: #ids)
			ifTrue: [ids addAll: each ids]
			ifFalse: [
				(each respondsTo: #idrefs)
					ifTrue: [references addAll: each idrefs]]].

	references do: [:each |
		(ids includes: each)
			ifFalse: [XMLValidationException signal: 'Invalid ID reference ', each]].