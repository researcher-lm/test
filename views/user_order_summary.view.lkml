view: user_order_summary {
  derived_table: {
    sql:
      SELECT
        users.id AS user_id,
        COUNT(orders.id) AS order_count,
        MAX(orders.created_at) AS last_order_date
      FROM
        your_schema.users AS users
      LEFT JOIN
        your_schema.orders AS orders
      ON
        users.id = orders.user_id
      GROUP BY
        users.id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
    primary_key: yes
  }

  dimension: last_order_date {
    type: string
    sql: ${TABLE}.last_order_date ;;
  }

  measure: order_count {
    type: number
    sql: ${TABLE}.order_count ;;
  }
}
