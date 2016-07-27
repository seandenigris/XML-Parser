private
setZincMaxEntitySize: aMaxSize during: aDuringBlock onError: anErrorBlock
	^ [
		(Smalltalk at: #ZnMaximumEntitySize)
			value: aMaxSize
			during: [
				"^ for GS value:during: which doesn't return the block result"
				^ aDuringBlock value]]
		on: Error
		do: anErrorBlock