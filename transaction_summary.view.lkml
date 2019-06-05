view: transaction_summary {
  derived_table: {
    sql: SELECT
        substitutable_product_flag.CategoryName  AS substitutable_product_flag_category_name,
        substitutable_product_flag.SubCategoryName  AS substitutable_product_flag_sub_category_name,
        substitutable_product_flag.month  AS substitutable_product_flag_month,
        substitutable_product_flag.year  AS substitutable_product_flag_year,
        substitutable_product_flag.substitutable_flag,
        COUNT(*) AS substitutable_product_flag_count
      FROM substitutableProduct.substitutable_product_flag  AS substitutable_product_flag

      GROUP BY 1,2,3,4,5
      ORDER BY 1
 ;;
  }


  dimension: substitutable_product_flag_category_name {
    type: string
    sql: ${TABLE}.substitutable_product_flag_category_name ;;
  }

  dimension: substitutable_product_flag_sub_category_name {
    type: string
    sql: ${TABLE}.substitutable_product_flag_sub_category_name ;;
  }

  dimension: substitutable_product_flag_month {
    type: number
    sql: ${TABLE}.substitutable_product_flag_month ;;
  }

  dimension: substitutable_product_flag_year {
    type: number
    sql: ${TABLE}.substitutable_product_flag_year ;;
  }

  dimension: substitutable_flag {
    type: yesno
    sql: ${TABLE}.substitutable_flag ;;
  }

  measure: substitutable_product_flag_count {
    type: count
    sql: ${TABLE}.substitutable_product_flag_count ;;
  }

  set: detail {
    fields: [
      substitutable_product_flag_category_name,
      substitutable_product_flag_sub_category_name,
      substitutable_product_flag_month,
      substitutable_product_flag_year,
      substitutable_flag,
      substitutable_product_flag_count
    ]
  }
}
