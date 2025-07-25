view: content_metadata {
  sql_table_name: `23edeced7d75ee`.content_metadata ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: content_id {
    type: number
    sql: ${TABLE}.content_id ;;
  }
  dimension: content_type {
    type: string
    sql: ${TABLE}.content_type ;;
  }
  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: homepage_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.homepage_id ;;
  }
  dimension: inheriting_id {
    type: number
    sql: ${TABLE}.inheriting_id ;;
  }
  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.look_id ;;
  }
  dimension: lookml_dashboard_id {
    type: number
    sql: ${TABLE}.lookml_dashboard_id ;;
  }
  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }
  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }
  dimension: space_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.space_id ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	dashboard.id,
	homepage.id,
	look.id,
	space.id,
	space.name,
	content_favorite.count,
	content_metadata_group_user.count,
	content_view.count,
	dashboard.count,
	homepage.count,
	homepage_item.count,
	look.count,
	lookml_dashboard_metadata.count,
	lookml_dashboard_metadata_v2.count,
	materialized_visible_content.count,
	space.count
	]
  }

}
