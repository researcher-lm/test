view: secrets {
  sql_table_name: `23edeced7d75ee`.secrets ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
