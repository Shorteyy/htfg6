view: energy_sources {
  sql_table_name: `sustainability.energy_sources`
    ;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: fossil_fuels {
    type: number
    sql: ${TABLE}.fossil_fuels ;;
  }

  dimension: nuclear {
    type: number
    sql: ${TABLE}.nuclear ;;
  }

  dimension: renewable {
    type: number
    sql: ${TABLE}.renewable ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: som_nuclear {
    type: sum
    sql: ${TABLE}.nuclear;;
  }

  measure: som_fossil {
    type: sum
    sql: ${TABLE}.fossil_fuels;;
  }

  measure: som_renew {
    type: sum
    sql: ${TABLE}.renewable;;
  }

}
