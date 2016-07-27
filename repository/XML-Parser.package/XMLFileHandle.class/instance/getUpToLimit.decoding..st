retrieving
getUpToLimit: aMaxSize decoding: aBoolean
	| stream upToEnd |

	stream :=
		self
			streamGetUpToLimit: aMaxSize
			decoding: aBoolean.
	upToEnd := stream upToEnd.
	stream close.

	^ upToEnd.