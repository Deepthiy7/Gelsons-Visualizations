view: revenue_forecast {
  sql_table_name: substitutableProduct.revenue_forecast ;;

  measure: ACTUAL {
    type: sum
    sql: ${TABLE}.ACTUAL ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.DATE ;;
  }

  measure: FORECAST {
    type: sum
    sql: ${TABLE}.FORECAST ;;
  }

  dimension: STORE_ID {
    type: string
    sql: ${TABLE}.STORE_ID ;;
  }

  dimension: UPC {
    type: string
    sql: ${TABLE}.UPC ;;
    value_format:"000000000000;"

  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }

  set: detail {
    fields: [date_date, STORE_ID, UPC, ACTUAL, FORECAST]
  }
}
