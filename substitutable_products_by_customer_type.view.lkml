view: substitutable_products_by_customer_type {
  derived_table: {
    sql: SELECT a.*,b.highly_used_customer_type FROM `true-item-ranking-poc-pluto7.substitutableProduct.substitutable_products_by_upc`  as a left outer join
      `substitutableProduct.upc_summary` as b on a.upc = b.upc
 ;;
  }

  measure: count {
    type: count
    drill_fields: [ranking,category_name,sub_category_name,substitutable_product_name,substitutable_upc]
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}.row_number ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: upc {
    type: string
    sql: Cast(${TABLE}.UPC AS String) ;;
  }

  dimension: no_of_customers {
    type: number
    sql: ${TABLE}.no_of_customers ;;
  }

  dimension: frequency_of_purchase {
    type: number
    sql: ${TABLE}.frequency_of_purchase ;;
  }

  dimension: avg_unit_purchased {
    type: number
    sql: ${TABLE}.avg_unit_purchased ;;
  }

  dimension: avg_price {
    type: number
    sql: ${TABLE}.avg_price ;;
  }

  dimension: substitutable_upc {
    type: string
    sql: CAST(${TABLE}.substitutable_upc AS string) ;;
  }

  dimension: ranking {
    type: number
    sql: ${TABLE}.ranking ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: substitutable_product_name {
    type: string
    sql: ${TABLE}.substitutable_product_name ;;
  }

  dimension: highly_used_customer_type {
    type: string
    sql: ${TABLE}.highly_used_customer_type ;;
  }

  set: detail {
    fields: [
      row_number,
      category_name,
      sub_category_name,
      upc,
      no_of_customers,
      frequency_of_purchase,
      avg_unit_purchased,
      avg_price,
      substitutable_upc,
      ranking,
      product_name,
      substitutable_product_name,
      highly_used_customer_type
    ]
  }
}
