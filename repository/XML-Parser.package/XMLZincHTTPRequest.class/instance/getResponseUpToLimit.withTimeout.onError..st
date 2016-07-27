private
getResponseUpToLimit: aMaxSize withTimeout: aTimeout onError: aBlock
	^ self
		setZincMaxEntitySize: aMaxSize
		during: [
			"use streaming entities to get the undecoded response
			to not conflict with our own decoding"
			((Smalltalk at: #ZnClient) new
				timeout: aTimeout;
				streaming: true;
				url: url;
				get;
				entity) contents]
		onError: aBlock