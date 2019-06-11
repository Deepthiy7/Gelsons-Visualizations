view: customer_cluster_demographics {
  sql_table_name: substitutableProduct.customer_cluster_demographics ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cust_name {
    type: string
    sql: ${TABLE}.cust_name ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.Customer_Type ;;
  }

  dimension: income_level {
    type: string
    sql: ${TABLE}.Income_Level ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: house_type {
    type: string
    sql: ${TABLE}.House_Type ;;
  }

  dimension: family_type {
    type: string
    sql: ${TABLE}.Family_Type ;;
  }

  dimension: age_type {
    type: string
    sql: ${TABLE}.Age_Type ;;
  }

  dimension: childs {
    type: string
    sql: ${TABLE}.Childs ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.Education_Level ;;
  }

  dimension: unique_id {
    type: number
    sql: ${TABLE}.unique_id ;;
  }

  measure: customer_id {
    type: sum
    sql: ${TABLE}.CustomerID ;;
    value_format: "0"
    drill_fields: [cust_name,income_level,gender,house_type,family_type,age_type,childs,education_level,avg_dist,store_id]

  }

  dimension: avg_dist {
    type: number
    sql: ${TABLE}.avg_dist ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  set: detail {
    fields: [
      cust_name,
      customer_type,
      income_level,
      gender,
      house_type,
      family_type,
      age_type,
      childs,
      education_level,
      unique_id,
      customer_id,
      avg_dist,
      store_id
    ]
  }
}
