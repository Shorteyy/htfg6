view: co2_emissions {
  sql_table_name: `sustainability.co2_emissions`
    ;;

  dimension: country_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: metricton_per_citizen {
    type: number
    sql: ${TABLE}.metricton_per_citizen ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: gmd {
    type: average
    sql: ${TABLE}.metricton_per_citizen ;;
    precision: 2
  }

  measure: som_co2 {
    type: sum
    sql: ${TABLE}.metricton_per_citizen ;;
  }
}
