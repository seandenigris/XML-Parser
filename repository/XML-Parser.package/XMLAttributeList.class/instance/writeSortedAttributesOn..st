private
writeSortedAttributesOn: aTagWriter
	self sorted do: [:each |
		aTagWriter
			writeAttributeName: each name
			value: each value]