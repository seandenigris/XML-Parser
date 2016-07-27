accessing
listItems
	attributes ifNil: [
		attributes :=
			super listItems collect: [:each |
				XMLAttribute name: each value: each]].
	^ attributes copy.