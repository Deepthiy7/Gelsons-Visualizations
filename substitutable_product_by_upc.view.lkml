view: substitutable_products_by_upc {
  sql_table_name:  substitutableProduct.substitutable_products_by_upc  ;;

  measure: count {
    type: count
    drill_fields: [ranking,category_name,sub_category_name,substitutable_product_name,substitutable_upc]
#     link: {label: "Substitutable Product by UPC ordered by Ranking" url: "{{ count._link }}&sorts=substitutable_product_by_upc.ranking+asc&limit=20" }
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: row_number {
    type: string
    sql: ${TABLE}.ranking ;;
  }


  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: substitutable_product_name {
    type: string
    sql: ${TABLE}.substitutable_product_name ;;
  }

  dimension: upc {
    type:string
    sql: ${TABLE}.upc;;
  }

  dimension: substitutable_upc {
    type: string
    sql: ${TABLE}.substitutable_upc ;;
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

  dimension: ranking {
    type: number
    sql: ${TABLE}.ranking ;;
  }

  set: detail {
    fields: [
      category_name,
      sub_category_name,
      month,
      year,
      product_name,
      substitutable_product_name,
      upc,
      substitutable_upc,
      no_of_customers,
      frequency_of_purchase,
      avg_unit_purchased,
      avg_price,
      ranking
    ]
  }
}
