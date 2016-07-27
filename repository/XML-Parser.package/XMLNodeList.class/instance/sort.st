sorting
sort
	self sort: [:a :b |
		(a isElement & b isElement) not
			or: [a name <= b name]]