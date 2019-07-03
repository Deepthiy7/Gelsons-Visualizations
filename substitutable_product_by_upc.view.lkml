view: substitutable_products_by_upc {

  measure: count {
    type: count
    drill_fields: [ranking,category_name,sub_category_name,substitutable_product_name,substitutable_upc]
  }

  measure: row_number {
    type: average
    sql: ${TABLE}.row_number ;;
    drill_fields: [category_name,sub_category_name,product_name,no_of_customers,frequency_of_purchase,avg_unit_purchased,avg_price]
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
    sql: CAST(${TABLE}.UPC AS STRING) ;;
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
    label: "Substitutable UPC"
    type: string
    sql: CAST(${TABLE}.substitutable_upc  AS string);;
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

  set: detail {
    fields: [
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
      substitutable_product_name
    ]
  }
}
