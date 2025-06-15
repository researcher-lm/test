view: google_group_sync_tasks {
  sql_table_name: `23edeced7d75ee`.google_group_sync_tasks ;;
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
  dimension: failure_count {
    type: number
    sql: ${TABLE}.failure_count ;;
  }
  dimension: is_one_time_sync {
    type: yesno
    sql: ${TABLE}.is_one_time_sync ;;
  }
  dimension: looker_group_id {
    type: number
    sql: ${TABLE}.looker_group_id ;;
  }
  dimension: member_group_id {
    type: number
    sql: ${TABLE}.member_group_id ;;
  }
  dimension: member_user_id {
    type: number
    sql: ${TABLE}.member_user_id ;;
  }
  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
