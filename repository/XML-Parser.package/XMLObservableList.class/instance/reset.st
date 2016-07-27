removing
reset
	collection do: [:each | self with: [] remove: each].
	collection reset.