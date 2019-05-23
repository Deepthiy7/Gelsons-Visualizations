view: revenue_forecast_view {
  derived_table: {
    sql: SELECT
        CAST(CAST(revenue_forecast.DATE  AS TIMESTAMP) AS DATE) AS revenue_forecast_date_date,
        revenue_forecast.ACTUAL  AS revenue_forecast_actual,
        revenue_forecast.FORECAST  AS revenue_forecast_forecast
      FROM substitutableProduct.revenue_forecast  AS revenue_forecast

      GROUP BY 1,2,3
      ORDER BY 1 DESC
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: revenue_forecast_date_date {
    type: date
    sql: ${TABLE}.revenue_forecast_date_date ;;
  }

  dimension: revenue_forecast_actual {
    type: number
    sql: ${TABLE}.revenue_forecast_actual ;;
  }

  dimension: revenue_forecast_forecast {
    type: number
    sql: ${TABLE}.revenue_forecast_forecast ;;
  }

  set: detail {
    fields: [revenue_forecast_date_date, revenue_forecast_actual, revenue_forecast_forecast]
  }
}
