private
writeAttributesOn: aTagWriter
	self attributeNodes do: [:each |
		aTagWriter
			attributeAt: each name
			put: each value]