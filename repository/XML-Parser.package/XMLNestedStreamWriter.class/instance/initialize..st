initialization
initialize: aNumberOfStreams
	streams := Array new: aNumberOfStreams.
	1 to: aNumberOfStreams do: [:i | streams at: i put: self newStream].
	nextStreamIndex := 1.