enumerating
with: aCollection collect: aBlock
	| newList |

	newList := self species new: self size.
	1 to: (self size min: aCollection size) do: [:i |
		newList addLast:
			(aBlock
				value: (self at: i)
				value: (aCollection at: i))].
	^ newList.