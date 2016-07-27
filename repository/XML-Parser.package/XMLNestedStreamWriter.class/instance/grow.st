private
grow
	streams :=
		(Array new: streams size + 5)
			replaceFrom: 1
			to: streams size
			with: streams
			startingAt: 1.
	nextStreamIndex to: streams size do: [:i | streams at: i put: self newStream].