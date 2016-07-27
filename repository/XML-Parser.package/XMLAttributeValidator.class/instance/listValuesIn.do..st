private
listValuesIn: aSpaceSeparatedList do: aBlock
	NormalizedSpace
		xmlSplit: aSpaceSeparatedList
		do: aBlock