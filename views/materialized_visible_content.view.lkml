view: materialized_visible_content {
  sql_table_name: `23edeced7d75ee`.materialized_visible_content ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: content_metadata_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.content_metadata_id ;;
  }
  dimension: from_group_id {
    type: number
    sql: ${TABLE}.from_group_id ;;
  }
  dimension: permission_type {
    type: string
    sql: ${TABLE}.permission_type ;;
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
	content_metadata.id,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
