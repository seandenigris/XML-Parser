validation
validateValue: aValue
	Character space
		split: aValue
		do: [:each | self validateName: each]