accessing
query
	| query |

	query := self rawQuery copyEmpty.
	self queryKeysAndValuesDo: [:key :value |
		query
			at: key
			put: value].
	^ query.