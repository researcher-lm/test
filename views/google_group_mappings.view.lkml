view: google_group_mappings {
  sql_table_name: `23edeced7d75ee`.google_group_mappings ;;

  dimension: google_group_email {
    type: string
    sql: ${TABLE}.google_group_email ;;
  }
  dimension: google_group_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.google_group_id ;;
  }
  dimension: looker_group_id {
    type: number
    sql: ${TABLE}.looker_group_id ;;
  }
  measure: count {
    type: count
    drill_fields: [google_group.id, google_group.name]
  }
}
