accessing
keysAndValuesDo: aBlock
	1 to: self maxSize do: [:i |
		aBlock
			value: ('key', i asString)
			value: ('value', i asString)]