sorting
sorted
	^ self sorted: [:a :b |
		(a isElement & b isElement) not
			or: [a name <= b name]]