@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 3: SQL Expressions'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_219000_SqlExpressions
  as select from /dmo/connection
{
  key carrier_id                        as CarrierId,
  key connection_id                     as ConnectionId,
      airport_from_id                   as AirportFromId,
      airport_to_id                     as AirportToId,
      departure_time                    as DepartureTime,
      arrival_time                      as ArrivalTime,
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      cast(distance as abap.quan(16,2)) as Distance,
      distance * 2                      as DoubleDistance,
      cast(distance as abap.fltp) / 2.0 as HalfDistance,
      distance_unit                     as DistanceUnit,
      case distance_unit
        when 'KM' then 'Kilometer'
        when 'MI' then 'Meilen'
        else ''
      end                               as DistanceUnitText,
      case when distance > 1000 and distance_unit = 'KM' then 'Langstreckenflug'
           when distance > 621 and distance_unit = 'MI' then 'Langstreckenflug'
           else 'Kurzstreckenflug'
      end                               as DistanceCategory

}
