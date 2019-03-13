Extension { #name : #ArrayedCollection }

{ #category : #'*Containers-Immutable-Collections' }
ArrayedCollection >> fold: aMonoid [
	^ ParallelFolding arrayedCollection: self fold: aMonoid maxChunkSize: 20
]

{ #category : #'*Containers-Immutable-Collections' }
ArrayedCollection >> foldable [
	^ SimpleFoldable new initializeForCollection: self injectMethodName: #inject:into: foldMethodName: #fold:
]
