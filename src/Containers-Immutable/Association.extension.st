Extension { #name : #Association }

{ #category : #'*Containers-Immutable-Collections' }
Association >> associationsInject: initialValue into: aBlock [
	^ aBlock value: initialValue value: self
]

{ #category : #'*Containers-Immutable-Collections' }
Association >> associationsSeq [
	^ { self } seq
]

{ #category : #'*Containers-Immutable-Collections' }
Association >> at: k level: l ifPresent: presentBlock ifAbsent: absentBlock [ 
	^ key = k ifTrue: [ presentBlock cull: value ] ifFalse: absentBlock
]

{ #category : #'*Containers-Immutable-Collections' }
Association >> count [
	^ 1
]

{ #category : #'*Containers-Immutable-Collections' }
Association >> mapValues: aBlock [
	^ key -> (aBlock cull: value cull: key)
]

{ #category : #'*Containers-Immutable-Collections' }
Association >> with: k as: v level: l [
	| myHash |
	key = k ifTrue: [ ^ key -> v ].
	myHash := key hash.
	myHash = k hash ifTrue: [ ^ HashMapCollisionNode new initializeWithAssociations: { key -> value. k -> v } ].
	^ (HashMapBitmapIndexedNode new initializeWithExistingNode: self level: l hash: myHash) with: k as: v level: l
]

{ #category : #'*Containers-Immutable-Collections' }
Association >> without: k level: l [
	^ key = k ifTrue: [HashMapEmptyNode new] ifFalse: [self]
]
