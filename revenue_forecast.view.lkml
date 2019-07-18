view: revenue_forecast {
  sql_table_name: substitutableProduct.revenue_forecast ;;

  measure: ACTUAL {
    type: sum
    sql: ${TABLE}.ACTUAL ;;
    value_format:"$0"
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
     value_format:"$0"
  }

  dimension: STORE_ID {
    type: string
    sql: ${TABLE}.STORE_ID ;;
  }

  dimension: STORE_NAME {
    type: string
    sql: ${TABLE}.StoreName ;;
  }

  dimension: UPC {
    type: string
    sql: ${TABLE}.UPC ;;
    value_format:"$#"
    drill_fields: [UPC,FORECAST]

  }

  dimension: UPC_filter {
    type: number
    sql: ${TABLE}.UPC_FILTER ;;
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

  measure: row_number {
    type: number
     sql:  Dense_rank() over(order by upc) ;;
    drill_fields: [week,UPC,FORECAST]
  }

  dimension: serial_number {
    type: number
    sql:  Dense_rank() over(order by upc) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: detail {
    fields: [date_date, STORE_ID, UPC, ACTUAL, FORECAST]
  }
}
