view: differentiatedproduct_pre_data {
  sql_table_name: substitutableProduct.differentiatedproduct_pre_data ;;

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: frequency_of_purchase {
    type: number
    sql: ${TABLE}.frequency_of_purchase ;;
  }

  dimension: line_code {
    type: number
    sql: ${TABLE}.LineCode ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: no_of_customers {
    type: number
    sql: ${TABLE}.no_of_customers ;;
  }

  dimension: percent_margin {
    type: number
    sql: ${TABLE}.percent_margin ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: upc {
    type: number
    sql: ${TABLE}.UPC ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [sub_category_name, category_name]
  }
}
