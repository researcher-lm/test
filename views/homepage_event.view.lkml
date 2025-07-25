view: homepage_event {
  sql_table_name: `23edeced7d75ee`.homepage_event ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }
  dimension: homepage_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.homepage_id ;;
  }
  dimension: homepage_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.homepage_item_id ;;
  }
  dimension: homepage_section_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.homepage_section_id ;;
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
	homepage.id,
	homepage_item.id,
	homepage_section.id,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
