private
writeAttributesOn: aTagWriter
	self do: [:each |
		aTagWriter
			writeAttributeName: each name
			value: each value]