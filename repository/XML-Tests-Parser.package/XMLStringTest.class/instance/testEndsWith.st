tests
testEndsWith
	| node |

	node := self nodeClass string: 'test'.
	1 to: 4 do: [:i | | suffix |
		suffix := 'test' last: i.
		self
			assert: (node endsWith: suffix);
			assert: (node endsWith: (self nodeClass string: suffix));
			deny: (node endsWith: (suffix copyWithFirst: $.));
			deny: (node endsWith: (self nodeClass string: (suffix copyWithFirst: $.)))].