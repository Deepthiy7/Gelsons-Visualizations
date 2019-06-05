view: substitutable_product_drill_down {
  derived_table: {
    sql: Select a.*,b.substitutable_product_flag_count AS count  FROM substitutableProduct.substitutable_product_flag AS a,(SELECT
        substitutable_product_flag.CategoryName  AS CategoryName,
        substitutable_product_flag.SubCategoryName  AS SubCategoryName,
        substitutable_product_flag.month  AS month,
        substitutable_product_flag.year  AS year,
        substitutable_product_flag.substitutable_flag,
        COUNT(*) AS substitutable_product_flag_count
      FROM substitutableProduct.substitutable_product_flag  AS substitutable_product_flag
      GROUP BY 1,2,3,4,5
      ORDER BY 1) AS b WHERE a.CategoryName = b.CategoryName and a.SubCategoryName = b.SubCategoryName and a.month = b.month and a.year = b.year AND
      a.substitutable_flag = b.substitutable_flag
 ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.UPC ;;
  }

  dimension: frequency_of_purchase {
    type: number
    sql: ${TABLE}.frequency_of_purchase ;;
  }

  dimension: no_of_customers {
    type: number
    sql: ${TABLE}.no_of_customers ;;
  }

  dimension: avg_unit_purchased {
    type: number
    sql: ${TABLE}.avg_unit_purchased ;;
  }

  dimension: avg_price {
    type: number
    sql: ${TABLE}.avg_price ;;
  }

  dimension: substitutable_flag {
    type: string
    sql: ${TABLE}.substitutable_flag ;;
  }

  dimension: ranking {
    type: number
    sql: ${TABLE}.ranking ;;
  }

  measure: count {
    type: sum
    sql: ${TABLE}.count ;;
    drill_fields: [category_name,sub_category_name,upc,substitutable_flag]
  }

  set: detail {
    fields: [
      category_name,
      sub_category_name,
      year,
      month,
      upc,
      frequency_of_purchase,
      no_of_customers,
      avg_unit_purchased,
      avg_price,
      substitutable_flag,
      ranking,
      count
    ]
  }
}
