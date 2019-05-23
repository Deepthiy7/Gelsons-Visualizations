view: customer_ {
  sql_table_name: substitutableProduct.customer_ ;;

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: cluster_2 {
    type: number
    sql: ${TABLE}.cluster_2 ;;
  }

  dimension: cust_name {
    type: string
    sql: ${TABLE}.cust_name ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.Customer_Type ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id, cust_name, customers.count]
  }
}
