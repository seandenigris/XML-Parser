private
getResponseUpToLimit: aMaxSize decoding: aBoolean timeout: aTimeout onError: aBlock
	^ self
		setZincMaxEntitySize: aMaxSize
		during: [
			"Use streaming entities to get the undecoded response when
			decoding is disabled. This is used to not conflict with our
			own decoding that relies on byte-order marks and <?xml?>
			encoding attributes."
			((Smalltalk at: #ZnClient) new
				streaming: aBoolean not;
				timeout: aTimeout;
				url: url;
				get;
				entity) contents]
		onError: aBlock