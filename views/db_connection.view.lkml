view: db_connection {
  sql_table_name: `23edeced7d75ee`.db_connection ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: after_connect_statements {
    type: string
    sql: ${TABLE}.after_connect_statements ;;
  }
  dimension: always_retry_failed_builds {
    type: yesno
    sql: ${TABLE}.always_retry_failed_builds ;;
  }
  dimension: analytical_view_dataset {
    type: string
    sql: ${TABLE}.analytical_view_dataset ;;
  }
  dimension: bq_roles_verified {
    type: yesno
    sql: ${TABLE}.bq_roles_verified ;;
  }
  dimension: bq_storage_project_id {
    type: string
    sql: ${TABLE}.bq_storage_project_id ;;
  }
  dimension: connection_pooling {
    type: yesno
    sql: ${TABLE}.connection_pooling ;;
  }
  dimension: cost_estimate_enabled {
    type: yesno
    sql: ${TABLE}.cost_estimate_enabled ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: custom_local_port {
    type: number
    sql: ${TABLE}.custom_local_port ;;
  }
  dimension: database {
    type: string
    sql: ${TABLE}.`database` ;;
  }
  dimension: db_connection_certificate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.db_connection_certificate_id ;;
  }
  dimension: db_timezone {
    type: string
    sql: ${TABLE}.db_timezone ;;
  }
  dimension: default_bq_connection {
    type: yesno
    sql: ${TABLE}.default_bq_connection ;;
  }
  dimension: dialect {
    type: string
    sql: ${TABLE}.dialect ;;
  }
  dimension: disable_context_comment {
    type: yesno
    sql: ${TABLE}.disable_context_comment ;;
  }
  dimension: driver_subprotocol {
    type: string
    sql: ${TABLE}.driver_subprotocol ;;
  }
  dimension: encrypted_private_key {
    type: string
    sql: ${TABLE}.encrypted_private_key ;;
  }
  dimension: example {
    type: yesno
    sql: ${TABLE}.example ;;
  }
  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }
  dimension: impersonated_service_account {
    type: string
    sql: ${TABLE}.impersonated_service_account ;;
  }
  dimension: integrity_hash {
    type: string
    sql: ${TABLE}.integrity_hash ;;
  }
  dimension: jdbc_additional_params {
    type: string
    sql: ${TABLE}.jdbc_additional_params ;;
  }
  dimension: last_reap_at {
    type: number
    sql: ${TABLE}.last_reap_at ;;
  }
  dimension: last_regen_at {
    type: number
    sql: ${TABLE}.last_regen_at ;;
  }
  dimension: logical_driver_version {
    type: number
    sql: ${TABLE}.logical_driver_version ;;
  }
  dimension: maintenance_cron {
    type: string
    sql: ${TABLE}.maintenance_cron ;;
  }
  dimension: managed {
    type: yesno
    sql: ${TABLE}.managed ;;
  }
  dimension: max_billing_gigabytes {
    type: string
    sql: ${TABLE}.max_billing_gigabytes ;;
  }
  dimension: max_billing_tier {
    type: number
    sql: ${TABLE}.max_billing_tier ;;
  }
  dimension: max_connections {
    type: number
    sql: ${TABLE}.max_connections ;;
  }
  dimension: max_queries {
    type: number
    sql: ${TABLE}.max_queries ;;
  }
  dimension: max_queries_per_user {
    type: number
    sql: ${TABLE}.max_queries_per_user ;;
  }
  dimension: misc_field {
    type: string
    sql: ${TABLE}.misc_field ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: named_driver_version {
    type: string
    sql: ${TABLE}.named_driver_version ;;
  }
  dimension: oauth_application_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oauth_application_id ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: pdt_api_control_enabled {
    type: yesno
    sql: ${TABLE}.pdt_api_control_enabled ;;
  }
  dimension: pdt_concurrency {
    type: number
    sql: ${TABLE}.pdt_concurrency ;;
  }
  dimension: pool_timeout {
    type: number
    sql: ${TABLE}.pool_timeout ;;
  }
  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }
  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }
  dimension: query_holding_disabled {
    type: yesno
    sql: ${TABLE}.query_holding_disabled ;;
  }
  dimension: query_timezone {
    type: string
    sql: ${TABLE}.query_timezone ;;
  }
  dimension: reg_key {
    type: string
    sql: ${TABLE}.reg_key ;;
  }
  dimension: schema {
    type: string
    sql: ${TABLE}.`schema` ;;
  }
  dimension_group: schema_busted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.schema_busted_at ;;
  }
  dimension: sql_runner_precache_tables {
    type: yesno
    sql: ${TABLE}.sql_runner_precache_tables ;;
  }
  dimension: sql_writing_with_info_schema {
    type: yesno
    sql: ${TABLE}.sql_writing_with_info_schema ;;
  }
  dimension: ssh_forward {
    type: yesno
    sql: ${TABLE}.ssh_forward ;;
  }
  dimension: ssh_host {
    type: string
    sql: ${TABLE}.ssh_host ;;
  }
  dimension: ssh_port {
    type: number
    sql: ${TABLE}.ssh_port ;;
  }
  dimension: ssh_remote_host {
    type: string
    sql: ${TABLE}.ssh_remote_host ;;
  }
  dimension: ssh_remote_port {
    type: number
    sql: ${TABLE}.ssh_remote_port ;;
  }
  dimension: ssh_username {
    type: string
    sql: ${TABLE}.ssh_username ;;
  }
  dimension: ssl {
    type: yesno
    sql: ${TABLE}.`ssl` ;;
  }
  dimension: tmp_db_host {
    type: string
    sql: ${TABLE}.tmp_db_host ;;
  }
  dimension: tmp_db_name {
    type: string
    sql: ${TABLE}.tmp_db_name ;;
  }
  dimension: tunnel_id {
    type: string
    sql: ${TABLE}.tunnel_id ;;
  }
  dimension: use_gcp_default_credentials {
    type: yesno
    sql: ${TABLE}.use_gcp_default_credentials ;;
  }
  dimension: user_attribute_fields {
    type: string
    sql: ${TABLE}.user_attribute_fields ;;
  }
  dimension: user_db_credentials {
    type: yesno
    sql: ${TABLE}.user_db_credentials ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }
  dimension: uses_tns {
    type: yesno
    sql: ${TABLE}.uses_tns ;;
  }
  dimension: verify_ssl {
    type: yesno
    sql: ${TABLE}.verify_ssl ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	ssh_username,
	tmp_db_name,
	username,
	db_connection_certificate.id,
	oauth_application.id,
	oauth_application.name,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name,
	db_connection_override.count,
	lookml_model_db_connection.count,
	upload_table.count
	]
  }

}
