view: oidc_config_default_new_user_group {
  sql_table_name: `23edeced7d75ee`.oidc_config_default_new_user_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }
  dimension: oidc_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oidc_config_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	group.id,
	group.name,
	oidc_config.id,
	oidc_config.user_attribute_map_first_name,
	oidc_config.user_attribute_map_last_name
	]
  }

}
