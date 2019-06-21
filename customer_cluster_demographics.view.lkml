view: customer_cluster_demographics {
  sql_table_name: substitutableProduct.customer_cluster_demographics ;;

  measure: count {
    type: count
    drill_fields: [cust_name, customer_type,income_level,gender,house_type,family_type,age_type,
      childs,education_level,unique_id,customer_id,store_id,avg_dist]
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

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
#     link: {
#       label: "Additional Customer Details"
#        url:"/looks/10?&f[customer_cluster_demographics.customer_id]={{ value }}"
#     }
  }

  measure: avg_dist {
    type: sum
    sql: CAST(${TABLE}.avg_dist AS NUMERIC);;
    value_format: "0000"
    drill_fields: [cust_name, customer_type,income_level,gender,house_type,family_type,age_type,
      childs,education_level,unique_id,customer_id,store_id,avg_dist]
  }

  measure: store_id {
    type: sum
    sql: cast(${TABLE}.store_id as numeric);;
    drill_fields: [cust_name, customer_type,income_level,gender,house_type,family_type,age_type,
      childs,education_level,unique_id,customer_id,store_id,avg_dist]
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
