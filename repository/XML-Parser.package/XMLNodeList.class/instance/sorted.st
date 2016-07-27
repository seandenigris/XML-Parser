sorting
sorted
	^ self sorted: [:a :b | a sortKey <= b sortKey]