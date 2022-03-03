<?php

    try {
        $db = new PDO('mysql:host=localhost;db_name=tp_logs', 'root', '');
        echo '<i>Database connected</i><br>';

        $logs = $db->query("SELECT * FROM tp_logs.logs")->fetchAll(PDO::FETCH_OBJ);
    }
    catch (Exception $e) {
        echo "Error !: " . $e->getMessage() . "<br/>";
        die();
    }

    interface ILogs {
        function write();
    }

    class LogBDD implements ILogs{
        function __construct(int $id, string $datetime, string $priority, string $message) {
            $this->id = $id;
            $this->datetime = $datetime;
            $this->priority = $priority;
            $this->message = $message;
        }
        function write() {}
    }

    $all_logs = [];

    foreach($logs as $log) {
        array_push($all_logs, new LogBDD($log->id, $log->_datetime, $log->_priority, $log->_message));
    }

