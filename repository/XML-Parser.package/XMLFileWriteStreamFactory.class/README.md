An abstract factory for file write streams used by XMLFileHandle.

Subclasses should create write streams that do no automatic encoding and accept raw byte characters, so XMLParser can do its own encoding.