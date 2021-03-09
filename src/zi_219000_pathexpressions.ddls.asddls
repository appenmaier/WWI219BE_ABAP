@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 7: Path Expressions'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_219000_PathExpressions
  as select from ZI_219000_Associations
{
  key CarrierId,
  key ConnectionId,
  key _Flights.flight_date   as FlightDate,
      AirportFromId,
      AirportToId,
      DepartureTime,
      ArrivalTime,
      Distance,
      DistanceUnit,
      _Flights.price         as Price,
      _Flights.currency_code as CurrencyCode
}
