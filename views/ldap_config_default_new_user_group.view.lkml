view: ldap_config_default_new_user_group {
  sql_table_name: `23edeced7d75ee`.ldap_config_default_new_user_group ;;
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
  dimension: ldap_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ldap_config_id ;;
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
	ldap_config.encrypted_auth_username,
	ldap_config.id,
	ldap_config.user_attribute_map_first_name,
	ldap_config.user_attribute_map_last_name
	]
  }

}
