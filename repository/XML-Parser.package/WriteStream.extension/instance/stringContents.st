*xml-parser
stringContents
	| newSize |

	newSize := position.
	^ (String new: newSize)	
		replaceFrom: 1
		to: newSize
		with: collection
		startingAt: 1