view: forest_coverage_mha {
  sql_table_name: `sustainability.forest_coverage_mha`
    ;;

  dimension: country_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: disturbed {
    type: number
    sql: ${TABLE}.disturbed ;;
  }

  dimension: gain {
    type: number
    sql: ${TABLE}.gain ;;
  }

  dimension: loss {
    type: number
    sql: ${TABLE}.loss ;;
  }

  dimension: stable_forest {
    type: number
    sql: ${TABLE}.stable_forest ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: som_disturbed {
    type: sum
    sql: ${TABLE}.disturbed;;
  }

  measure: som_gain {
    type: sum
    sql: ${TABLE}.gain;;
  }

  measure: som_stable_forest {
    type: sum
    sql: ${TABLE}.stable_forest;;
  }

  measure: som_loss {
    type: sum
    sql: ${TABLE}.loss;;
  }

  measure: verschil {
    type: sum
    sql: ${TABLE}.gain - ${TABLE}.loss;;
  }
}
