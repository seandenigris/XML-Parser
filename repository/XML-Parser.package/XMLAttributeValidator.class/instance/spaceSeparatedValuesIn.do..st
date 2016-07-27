private
spaceSeparatedValuesIn: aSpaceSeparatedList do: aBlock
	Character space
		split: aSpaceSeparatedList
		do: aBlock