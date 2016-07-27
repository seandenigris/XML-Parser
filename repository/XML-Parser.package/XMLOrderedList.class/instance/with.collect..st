enumerating
with: aCollection collect: aBlock
	| newCollection |

	newCollection := self species new: self size.
	1 to: (self size min: aCollection size) do: [:i |
		newCollection addLast:
			(aBlock
				value: (self at: i)
				value: (aCollection at: i))].
	^ newCollection.