view: customer_cluster_demographics {

  measure: count {
    type: count

  }

  dimension: customer_id {
    type: string
    sql: CAST(${TABLE}.CustomerID AS string) ;;
  }

  dimension: house_type {
    type: string
    sql: ${TABLE}.House_Type ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: income_level {
    type: string
    sql: ${TABLE}.Income_Level ;;
  }

  dimension: age_type {
    type: string
    sql: ${TABLE}.Age_Type ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.Education_Level ;;
  }

  dimension: cust_name {
    type: string
    sql: ${TABLE}.cust_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  measure: store_id {
    type: sum
    sql: ${TABLE}.store_id ;;
    drill_fields: [cust_name,gender,age_type,education_level,house_type,income_level,childs,store_id,avg_dist]
  }

  measure: avg_dist {
    type: sum
    sql: ROUND(CAST(${TABLE}.avg_dist  AS numeric),2);;
    value_format:"#;"
    drill_fields: [cust_name,gender,age_type,education_level,house_type,income_level,childs,store_id,avg_dist]
  }

  dimension: childs {
    type: string
    sql: ${TABLE}.childs ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.Customer_Type ;;
  }

  set: detail {
    fields: [
      customer_id,
      house_type,
      gender,
      income_level,
      age_type,
      education_level,
      cust_name,
      email,
      store_id,
      avg_dist,
      childs,
      customer_type
    ]
  }
}
