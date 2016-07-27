validation
validateAttributeValue: aValue
	Character space
		split: aValue
		do: [:each | self validateEntityReference: each]