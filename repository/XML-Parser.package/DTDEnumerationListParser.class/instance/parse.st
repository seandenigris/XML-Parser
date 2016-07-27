parsing
parse
	| values value |

	values := Set new.

	(enumerationList notEmpty
		and: [enumerationList first == $(
			and: [enumerationList last == $)]])
		ifFalse: [XMLValidationException signal: 'Expected enumeration list'].

	($| split: (enumerationList copyFrom: 2 to: enumerationList size - 1))
		do: [:each |
			value := each copyWithout: Character space.
			(self isValidListValue: value)
				ifFalse: [XMLValidationException signal: 'Invalid enumeration value "', value, '" in list'].
			(values includes: value)
				ifTrue: [XMLValidationException signal: 'Duplicate "', value, '" in list'].
			values add: value].

	^ values.