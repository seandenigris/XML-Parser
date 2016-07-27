private
listValuesIn: aSpaceSeparatedList do: aBlock
	Character space
		split: aSpaceSeparatedList
		do: aBlock