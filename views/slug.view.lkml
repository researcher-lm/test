view: slug {
  sql_table_name: `23edeced7d75ee`.slug ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bigint_id {
    type: number
    sql: ${TABLE}.bigint_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }
  dimension_group: last_fetched {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_fetched ;;
  }
  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.query_id ;;
  }
  dimension: result_maker_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.result_maker_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, query.id, result_maker.id]
  }
}
