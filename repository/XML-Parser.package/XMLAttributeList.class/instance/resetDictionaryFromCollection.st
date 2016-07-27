private
resetDictionaryFromCollection
	self attributesByName removeAll.
	collection do: [:each |
		self attributesByName
			at: each name
			put: each].