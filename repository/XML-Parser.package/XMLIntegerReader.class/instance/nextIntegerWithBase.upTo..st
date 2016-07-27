reading
nextIntegerWithBase: aBase upTo: anInteger
	| integer maxValue maxBaseValue digitValue readLimit |

	maxValue := self maxIntegerValue.
	maxBaseValue := (maxValue / aBase) asInteger.
	readLimit := anInteger.
	[stream atEnd
		or: [(readLimit notNil and: [readLimit <= 0])
			or: [(digitValue := self nextDigitWithBase: aBase) isNil]]]
		whileFalse: [
			integer ifNil: [integer := 0].
	
			integer > maxBaseValue
				ifTrue: [^ integer].
			integer := integer * aBase.

			integer > (maxValue - digitValue)
				ifTrue: [^ integer].
			integer := integer + digitValue.
			readLimit ifNotNil: [readLimit := readLimit - 1]].
	^ integer.