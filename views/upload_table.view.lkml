view: upload_table {
  sql_table_name: `23edeced7d75ee`.upload_table ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: built_at {
    type: number
    sql: ${TABLE}.built_at ;;
  }
  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }
  dimension: db_connection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.db_connection_id ;;
  }
  dimension: definition {
    type: string
    sql: ${TABLE}.definition ;;
  }
  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }
  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  dimension: view_name {
    type: string
    sql: ${TABLE}.view_name ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	table_name,
	view_name,
	db_connection.id,
	db_connection.name,
	db_connection.ssh_username,
	db_connection.tmp_db_name,
	db_connection.username,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
