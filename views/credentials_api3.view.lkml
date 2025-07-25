view: credentials_api3 {
  sql_table_name: `23edeced7d75ee`.credentials_api3 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: encrypted_client_secret {
    type: string
    sql: ${TABLE}.encrypted_client_secret ;;
  }
  dimension_group: logged_in {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.logged_in_at ;;
  }
  dimension: purpose {
    type: string
    sql: ${TABLE}.purpose ;;
  }
  dimension: unique_client_id {
    type: string
    sql: ${TABLE}.unique_client_id ;;
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
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name,
	access_token.count
	]
  }

}
