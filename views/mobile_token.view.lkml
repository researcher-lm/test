view: mobile_token {
  sql_table_name: `23edeced7d75ee`.mobile_token ;;
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
  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }
  dimension_group: device_id_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.device_id_updated_at ;;
  }
  dimension_group: device_token_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.device_token_updated_at ;;
  }
  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }
  dimension: encrypted_device_token {
    type: string
    sql: ${TABLE}.encrypted_device_token ;;
  }
  dimension: push_enabled {
    type: yesno
    sql: ${TABLE}.push_enabled ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.first_name, user.id, user.last_name]
  }
}
