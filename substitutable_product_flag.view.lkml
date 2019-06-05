view: substitutable_product_flag {
  sql_table_name: substitutableProduct.substitutable_product_flag ;;

  dimension: avg_price {
    type: number
    sql: ${TABLE}.avg_price ;;
  }

  dimension: avg_unit_purchased {
    type: number
    sql: ${TABLE}.avg_unit_purchased ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: frequency_of_purchase {
    type: number
    sql: ${TABLE}.frequency_of_purchase ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: no_of_customers {
    type: number
    sql: ${TABLE}.no_of_customers ;;
  }

  dimension: ranking {
    type: number
    sql: ${TABLE}.ranking ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: substitutable_flag {
    type: yesno
    sql: ${TABLE}.substitutable_flag ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.UPC ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;

  }

  dimension: true_substitutable_flag {
    type: string
    sql: ${TABLE}.substitutable_flag
      ;;
  }

  measure: count {
    type: count
    drill_fields: [category_name,sub_category_name,no_of_customers,frequency_of_purchase,avg_unit_purchased,avg_price, upc,substitutable_flag]
  }
}
