tools registry
registerToolsOn: aToolRegistry
	aToolRegistry registerDebugger: self withRank: 60.
	aToolRegistry register: self as: #debugger