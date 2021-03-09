@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 6: Associations'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_219000_Associations
  as select from /dmo/connection as Connection
  association [*] to /dmo/flight as _Flights on  Connection.carrier_id    = _Flights.carrier_id
                                             and Connection.connection_id = _Flights.connection_id
{
  key Connection.carrier_id      as CarrierId,
  key Connection.connection_id   as ConnectionId,
      Connection.airport_from_id as AirportFromId,
      Connection.airport_to_id   as AirportToId,
      Connection.departure_time  as DepartureTime,
      Connection.arrival_time    as ArrivalTime,
      Connection.distance        as Distance,
      Connection.distance_unit   as DistanceUnit,
      _Flights
}
