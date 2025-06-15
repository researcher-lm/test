view: user_ide_state {
  sql_table_name: `23edeced7d75ee`.user_ide_state ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: editor_line_wrap {
    type: yesno
    sql: ${TABLE}.editor_line_wrap ;;
  }
  dimension: ide_navigation {
    type: string
    sql: ${TABLE}.ide_navigation ;;
  }
  dimension: info_tab_state {
    type: string
    sql: ${TABLE}.info_tab_state ;;
  }
  dimension: left_sidebar_item {
    type: string
    sql: ${TABLE}.left_sidebar_item ;;
  }
  dimension: left_sidebar_width {
    type: number
    sql: ${TABLE}.left_sidebar_width ;;
  }
  dimension: right_sidebar_item {
    type: string
    sql: ${TABLE}.right_sidebar_item ;;
  }
  dimension: right_sidebar_width {
    type: number
    sql: ${TABLE}.right_sidebar_width ;;
  }
  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.first_name, user.id, user.last_name]
  }
}
