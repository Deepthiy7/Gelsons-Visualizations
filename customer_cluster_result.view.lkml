view: customer_cluster_result {
  sql_table_name: substitutableProduct.customer_cluster_result ;;

  dimension: cluster_2 {
    type: number
    sql: ${TABLE}.cluster_2 ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.Customer_Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
