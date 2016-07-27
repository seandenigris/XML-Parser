instance creation
newFrom: aDictionaryOrArray
	| newDictionary |

	newDictionary := self new: aDictionaryOrArray size.
	aDictionaryOrArray associationsDo: [:each | newDictionary add: each].
	^ newDictionary.