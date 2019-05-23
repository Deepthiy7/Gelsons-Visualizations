view: customer_cluster_data {
  sql_table_name: substitutableProduct.customer_cluster_data ;;

  dimension: cluster_2 {
    type: number
    sql: ${TABLE}.cluster_2 ;;
  }

  dimension: cust_name {
    type: string
    sql: ${TABLE}.cust_name ;;
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
    drill_fields: [cust_name]
  }
}
