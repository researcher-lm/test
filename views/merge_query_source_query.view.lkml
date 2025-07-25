view: merge_query_source_query {
  sql_table_name: `23edeced7d75ee`.merge_query_source_query ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: merge_fields {
    type: string
    sql: ${TABLE}.merge_fields ;;
  }
  dimension: merge_query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.merge_query_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.query_id ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, merge_query.id, query.id]
  }
}
