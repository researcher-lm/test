view: sql_query {
  sql_table_name: `23edeced7d75ee`.sql_query ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: connection_id {
    type: string
    sql: ${TABLE}.connection_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }
  dimension_group: last_run {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_run_at ;;
  }
  dimension: last_runtime {
    type: number
    sql: ${TABLE}.last_runtime ;;
  }
  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }
  dimension: result_set_metadata {
    type: string
    sql: ${TABLE}.result_set_metadata ;;
  }
  dimension: run_count {
    type: number
    sql: ${TABLE}.run_count ;;
  }
  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }
  dimension: sql {
    type: string
    sql: ${TABLE}.`sql` ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	model_name,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name,
	history.count,
	query_task.count,
	result_maker.count
	]
  }

}
