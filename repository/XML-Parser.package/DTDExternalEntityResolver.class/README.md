This class resolves external entity references using XMLURI, XMLHTTPRequest, and XMLFileHandle.

It supports retrieving external general entities as DTDExternalGeneralEntity objects with #resolveExternalGeneralEntity:publicID:systemID:baseURI: and external parameter entities as DTDExternalParameterEntity objects with #resolveExternalParameterEntity:publicID:systemID:baseURI:.

#resolveExternalEntityURI: and  #streamResolveExternalEntityURI: messages can resolve generic external entity URIs as strings or read streams.