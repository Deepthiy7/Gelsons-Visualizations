view: substitutable_product_by_line_code {

  measure: count {
    type: count
    drill_fields: [ranking,category_name,sub_category_name,substitutable_product_name,substitutable_upc]
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: line_code {
    type: string
    sql: CAST(${TABLE}.LineCode  as string);;
#     value_format:"000000000000;"
  }

  dimension: upc {
    type: string
    sql: Cast(${TABLE}.UPC  as string);;
#     value_format:"000000000000;"
  }

  dimension: no_of_customers {
    type: number
    sql: ${TABLE}.no_of_customers ;;
#     value_format:"000000000000;"
  }

  dimension: frequency_of_purchase {
    type: number
    sql: ${TABLE}.frequency_of_purchase ;;
    value_format:"#;"
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
    type: number
    sql: ${TABLE}.substitutable_upc ;;
    value_format:"#;"
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
      line_code,
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
