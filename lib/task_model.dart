class Task{
  int? task_id;
  String? task_description;
  String? task_title;
  int? site_id;
  int? site_task_id;
  int? site_task_type;
  int? site_user_id;
  String? task_locale;
  int? cost_execution;
  int? max_executions;
  int? time_perform;
  int? time_checking;
  int? check_type;
  int? user_utc;
  int? status;
  String? created_at;
  String? updated_at;



  Task({
    this.task_id,
    this.task_description,
    this.task_title,
    this.site_id,
    this.site_task_id,
    this.site_task_type,
    this.site_user_id,
    this.task_locale,
    this.cost_execution,
    this.max_executions,
    this.time_perform,
    this.time_checking,
    this.check_type,
    this.user_utc,
    this.status,
    this.created_at,
    this.updated_at,
  });

  factory Task.fromMap(Map<String, dynamic> json) => Task(
    task_id: json["task_id"] == null ? null : json["task_id"],
    task_description: json["task_description"] == null ? null : json["task_description"],
    task_title: json["task_title"] == null ? null : json["task_title"],
    site_id: json["site_id"] == null ? null : json["site_id"],
    site_task_id: json["site_task_id"] == null ? null : json["site_task_id"],
    site_task_type: json["site_task_type"] != null ? json["site_task_type"] : null,
    site_user_id: json["site_user_id"] != null ? json["site_user_id"] : null,
    task_locale: json["task_locale"] != null ? json["task_locale"] : null,
    cost_execution: json["cost_execution"] != null ? json["cost_execution"].toInt() : null,
    max_executions: json["max_executions"] != null ? json["max_executions"] : null,
    time_perform: json["time_perform"] != null ? json["time_perform"] : null,
    time_checking: json["time_checking"] != null ? json["time_checking"] : null,
    check_type: json["check_type"] != null ? json["check_type"] : null,
    user_utc: json["user_utc"] != null ? json["user_utc"] : null,
    status: json["status"] != null ? json["status"] : null,
    created_at: json["created_at"] != null ? json["created_at"] : null,
    updated_at: json["updated_at"] != null ? json["updated_at"] : null,
  );
}