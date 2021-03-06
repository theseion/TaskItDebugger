private
filteredMasterStack
	| masterHolder entryPointHolder |
	masterHolder := interruptedProcess masterProcessHolder.
	entryPointHolder := masterHolder findContextHolderSuchThat: [ :contextHolder |
		contextHolder originalContext selector = #for: and: [
			contextHolder originalContext receiver = ProcessHolder ] ].
		
	^ entryPointHolder
		ifNil: [ masterHolder stack ]
		ifNotNil: [ masterHolder stackStartingAt: entryPointHolder next ]