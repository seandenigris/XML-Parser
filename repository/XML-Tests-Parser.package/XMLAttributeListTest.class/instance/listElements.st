accessing
listElements
	attributes ifNil: [
		attributes :=
			super listElements collect: [:each |
				XMLAttribute name: each value: each]].
	^ attributes copy.