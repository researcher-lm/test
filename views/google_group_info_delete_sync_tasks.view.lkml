view: google_group_info_delete_sync_tasks {
  sql_table_name: `23edeced7d75ee`.google_group_info_delete_sync_tasks ;;
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
  dimension: google_group_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.google_group_id ;;
  }
  dimension: member_email {
    type: string
    sql: ${TABLE}.member_email ;;
  }
  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }
  measure: count {
    type: count
    drill_fields: [id, google_group.id, google_group.name]
  }
}
