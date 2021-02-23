@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 1: Syntax'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_219000_Syntax //Name der CDS-View (max. 30 Zeichen)
  as select from /dmo/connection
{
  key carrier_id      as CarrierId,
  key connection_id   as ConnectionId,
      airport_from_id as AirportFromId,
      airport_to_id   as AirportToId,
      departure_time  as DepartureTime,
      arrival_time    as ArrivalTime,
      distance        as Distance,
      distance_unit   as DistanceUnit
}
where
  carrier_id <> 'UA'
