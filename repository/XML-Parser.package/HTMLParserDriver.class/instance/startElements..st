private
startElements: anElementCollection
	anElementCollection do: [:each |
		self
			startElement: each
			attributes: (OrderPreservingDictionary new: 5 withDefaultValue: '')].