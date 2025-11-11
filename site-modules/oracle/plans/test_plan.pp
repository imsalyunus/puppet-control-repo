# Testing Running Plans for  database Oracle
plan oracle::test_plan {
  $nodes = get_targets(['ora19cdg01', 'ora19cdg02'])

  # Startup database Oracle
  $task1 = run_task('oracle::startup',$nodes)

  # Check role dan status database
  $task2 = run_task('oracle::get_role',$nodes)

  # Debugging
  return {
    debug1 => $task1,
    debug2 => $task2
  }
}
