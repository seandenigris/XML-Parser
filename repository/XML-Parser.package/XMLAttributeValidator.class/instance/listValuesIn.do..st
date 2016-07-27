private
listValuesIn: aSpaceSeparatedList do: aBlock
	Character space
		xmlSplit: aSpaceSeparatedList
		do: aBlock