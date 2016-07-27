private
setZincMaxEntitySize: aMaxSize during: aDuringBlock onError: anErrorBlock
	^ [
		(Smalltalk at: #ZnMaximumEntitySize)
			value: aMaxSize
			during: [
				"^ is for GS value:during: which does not return block result"
				^ aDuringBlock value]]
		on: Error
		do: anErrorBlock