view: differentiated_product_item_list {
  sql_table_name: substitutableProduct.differentiated_product_item_list ;;

  dimension: product_size {
    type: string
    sql: CAST(${TABLE}.productSize AS string) ;;
  }

  dimension: unit_of_measure {
    type: string
    sql: ${TABLE}.UnitOfMeasure;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: n_rows {
    type: number
    sql: ${TABLE}.N_Rows ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.UPC ;;
    value_format:"000000000000;"
  }

  dimension: weighted_sequence {
    type: number
    sql: ${TABLE}.weighted_sequence ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description  ;;
  }
  measure: count {
    type: count
    drill_fields: [sub_category_name, category_name]
  }
}
