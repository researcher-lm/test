view: report_user_usage {
  sql_table_name: `23edeced7d75ee`.report_user_usage ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: api_count {
    type: number
    sql: ${TABLE}.api_count ;;
  }
  dimension_group: last_accessed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_accessed_at ;;
  }
  dimension: other_count {
    type: number
    sql: ${TABLE}.other_count ;;
  }
  dimension: report_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.report_id ;;
  }
  dimension: schedule_count {
    type: number
    sql: ${TABLE}.schedule_count ;;
  }
  dimension_group: start_of_week {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_of_week_date ;;
  }
  dimension: total_count {
    type: number
    sql: ${TABLE}.total_count ;;
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
	report.id,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
