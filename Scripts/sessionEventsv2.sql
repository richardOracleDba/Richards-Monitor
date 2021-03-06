SELECT se.sid
,      username
,      se.event
,      TO_CHAR(se.total_waits, '999,999,999,990' ) "Total Waits"
,      TO_CHAR(se.total_timeouts, '999,999,999,990' ) "Total Timeouts"
,      TO_CHAR(se.time_waited, '999,999,999,990' ) "Time Waited (hundredths)"
,      TO_CHAR(ROUND(se.average_wait, 2), '999,999,990.99' ) "Averave Wait (hundredths)"
,      TO_CHAR(se.max_wait, '999,999,999,990' ) "Max Wait (hundredths)" 
FROM gv$session_event se 
,    gv$session s
WHERE se.inst_id = s.inst_id
  and se.sid = s.sid
  and s.event != 'client message'
  AND s.event != 'SQL*Net message from client'
  AND s.event != 'SQL*Net message to client'
  AND s.event != 'rdbms ipc message'
  AND s.event != 'smon timer'
  AND s.event != 'null event'
  AND s.event != 'pmon timer'
  AND s.event != 'wakeup time manager'
  AND s.event != 'lock manager wait for remote message'
  AND s.event != 'queue messages'
ORDER BY se.time_waited desc 
/
