accessing
nextIntegerWithBase: aBase
	| integer maxValue maxBaseValue digitValue |

	integer := 0.
	maxValue := self maxIntegerValue.
	maxBaseValue := (maxValue / aBase) asInteger.
	[self atEnd not
		and: [(digitValue := self nextDigitWithBase: aBase) notNil]]
		whileTrue: [
			integer > maxBaseValue
				ifTrue: [^ integer].
			integer := integer * aBase.

			integer > (maxValue - digitValue)
				ifTrue: [^ integer].
			integer := integer + digitValue].
	^ integer.