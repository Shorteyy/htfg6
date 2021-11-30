connection: "htf2021"

# include all the views
include: "/views/**/*.view"

datagroup: htf2021_group6_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: htf2021_group6_default_datagroup

explore: ages {}

explore: company_employees {}

explore: aib_bnbs_nyc {}

explore: bnbcheckins {}

explore: bnbreservations {}

explore: appearance {}

explore: companies {}

explore: event_reviews {
  join: events {
    type: left_outer
    sql_on: ${event_reviews.event_id} = ${events.id} ;;
    relationship: many_to_one
  }
}

explore: financial_status {}

explore: events {}

explore: physical_characteristics {}

explore: people {}

explore: gender {}

explore: locations {}

explore: religions {}

explore: nationalities {}

explore: ride_passengers {}

explore: ride_info {}

explore: taxi_rides {
  join: taxis {
    type: left_outer
    sql_on: ${taxi_rides.taxi_id} = ${taxis.id} ;;
    relationship: many_to_one
  }
}

explore: taxis {}

explore: roles {}

explore: sub_departments {}
