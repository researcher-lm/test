view: proposed_group {
  sql_table_name: `23edeced7d75ee`.proposed_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: base_group_id {
    type: number
    sql: ${TABLE}.base_group_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	google_group.count,
	ldap_group.count,
	oidc_group.count,
	proposed_group_role.count,
	saml_group.count
	]
  }

}
