Extension { #name : #Dictionary }

{ #category : #'*Containers-Immutable-Collections' }
Dictionary >> maybeAt: key [
	^ self at: key ifPresent: [ :v | Something withValue: v ] ifAbsent: [ nothing ]
]
