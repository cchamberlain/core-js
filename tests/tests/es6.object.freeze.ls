{module, test} = QUnit
module \ES6

test 'Object.freeze' (assert)!->
  {freeze, isFrozen, keys, getOwnPropertyNames, getOwnPropertySymbols} = Object
  {ownKeys} = Reflect
  assert.isFunction freeze
  assert.arity freeze, 1
  assert.name freeze, \freeze
  assert.looksNative freeze
  for value in [42 \foo no null void, {}]
    assert.ok (try => freeze value; on), "accept #{typeof! value}"
    assert.same freeze(value), value, "returns target on #{typeof! value}"
  if NATIVE
    assert.ok isFrozen freeze {}
  assert.arrayEqual [key for key of freeze {}], []
  assert.arrayEqual keys(freeze {}), []
  assert.arrayEqual getOwnPropertyNames(freeze {}), []
  assert.arrayEqual getOwnPropertySymbols(freeze {}), []
  assert.arrayEqual ownKeys(freeze {}), []