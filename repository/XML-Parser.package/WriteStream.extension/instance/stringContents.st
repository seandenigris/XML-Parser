*xml-parser
stringContents
	| newSize |

	newSize := position.
	^ (collection class new: newSize)	
		replaceFrom: 1
		to: newSize
		with: collection
		startingAt: 1