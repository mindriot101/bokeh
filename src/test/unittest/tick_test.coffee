calc_bound = window.calc_bound
tick_intervals = window.tick_intervals
auto_interval = window.auto_interval
test('test_calc_bound', ()->
  expect(4)
  equal(calc_bound(3.0, 2, true), 4)
  equal(calc_bound(3.0, 2, false), 2)
  equal(calc_bound(4.0, 2, true), 4)
  equal(calc_bound(4.0, 2, false), 4)
  )


test('test_tick_intervals', ()->
  expect(3)
  equal(tick_intervals(0.0, 100.0, 13), 10)
  equal(tick_intervals(0.0, 120.0, 3), 50)
  equal(tick_intervals(0.0, 100.0, 5), 25)

  )
test('auto_interval', ->
  equal(auto_interval(0.0, 100.0), 20)
  equal(auto_interval(0.0, 130.0), 25)
  equal(auto_interval(30.0, 50.0), 2.5)
  )
test('argsort', ->
  
  equal(argsort([-3, -2, -1]), [0,1,2])
  equal(
    argsort([3, -2, -1]),
      [1,2, 0])
  )
      

  


