view: items_by_customer_type {
  derived_table: {
    sql: SELECT DATE, ACTUAL, FORECAST, upc, differentated_flag, substitutable_flag, CategoryName, SubCategoryName, description, revenue_forecast_Status, highly_used_customer_type,
      CASE WHEN highly_used_customer_type LIKE 'premium customers'  THEN high_value_customers_count
       WHEN highly_used_customer_type LIKE 'non premium customers' THEN low_value_customers_count
      else high_value_customers_count END AS frequency_of_purchase
      FROM substitutableProduct.upc_summary_revenue
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: string
    sql: ${TABLE}.DATE ;;
  }

  dimension: actual {
    type: number
    sql: ${TABLE}.ACTUAL ;;
  }

  dimension: REVENUE_FORECAST {
    type: number
    sql: ${TABLE}.FORECAST ;;
    value_format:"$0"
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.upc ;;
    value_format:"$#"
  }

  dimension: differentated_flag {
    type: string
    sql: ${TABLE}.differentated_flag ;;
  }

  dimension: substitutable_flag {
    type: string
    sql: ${TABLE}.substitutable_flag ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: revenue_forecast_status {
    type: string
    sql: ${TABLE}.revenue_forecast_Status ;;
  }

  dimension: highly_used_customer_type {
    type: string
    sql: ${TABLE}.highly_used_customer_type ;;
  }

  measure: frequency_of_purchase {
    type: average
    sql: ${TABLE}.frequency_of_purchase ;;
    value_format:"#"
    drill_fields: [date,REVENUE_FORECAST]
  }

  measure: row_number {
    type: number
    sql:  row_number() over(partition by ${category_name},${sub_category_name} order by ${category_name},${sub_category_name},${frequency_of_purchase} desc) ;;
    drill_fields: [date,REVENUE_FORECAST]
  }

  set: detail {
    fields: [
      date,
      actual,
      REVENUE_FORECAST,
      upc,
      differentated_flag,
      substitutable_flag,
      category_name,
      sub_category_name,
      description,
      revenue_forecast_status,
      highly_used_customer_type,
      frequency_of_purchase
    ]
  }
}
