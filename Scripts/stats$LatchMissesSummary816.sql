SELECT e.parent_name parent
,      e.where_in_code where_from
,      e.nwfail_count - NVL(b.nwfail_count, 0) nwmisses
,      e.sleep_count - NVL(b.sleep_count, 0) sleeps 
FROM stats$latch_misses_summary b
,    stats$latch_misses_summary e 
WHERE b.snap_id (+) = ? 
  AND e.snap_id = ? 
  AND b.dbid (+) = ? 
  AND e.dbid = ? 
  AND b.dbid (+) = e.dbid 
  AND b.instance_number (+) = ? 
  AND e.instance_number = ? 
  AND b.instance_number (+) = e.instance_number 
  AND b.parent_name (+) = e.parent_name 
  AND b.where_in_code (+) = e.where_in_code 
  AND e.sleep_count > NVL(b.sleep_count, 0) 
ORDER BY e.parent_name
,        sleeps desc 
