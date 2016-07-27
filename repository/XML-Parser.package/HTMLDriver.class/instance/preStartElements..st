private
preStartElements: anElementCollection
	anElementCollection do: [:each |
		super
			handleStartTag: each
			attributes: Dictionary new
			namespaces: nil].