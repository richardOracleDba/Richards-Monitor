SELECT sample_time
,      users.username
,      sql_id 
,      sql_plan_hash_value
,      session_type
,      en.name
,      p1
,      p2
,      p3
,      wait_time
,      time_waited
,      services.name "Service"
,      program
,      module
,      action 
FROM dba_hist_active_sess_history ash
,    dba_users users
,    dba_services services
,    v$event_name en
WHERE ash.user_id = users.user_id 
  AND ash.service_hash = services.name_hash 
  AND ash.event_id = en.event_id
  AND ash.snap_id > ? 
  AND ash.snap_id <= ?
  AND ash.dbid = ?
  AND ash.instance_number = ?
  AND ash.event = ?
ORDER BY sample_time
/

