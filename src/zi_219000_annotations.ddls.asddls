@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 2: Annotations'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity ZI_219000_Annotations
  as select from ZI_219000_Syntax
{

  key CarrierId,
  key ConnectionId,
      @Search:{
            defaultSearchElement: true,
            fuzzinessThreshold: 0.5
      }
      AirportFromId,
      @Search:{
            defaultSearchElement: true,
            fuzzinessThreshold: 0.5
      }
      AirportToId,
      DepartureTime,
      ArrivalTime,
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      @EndUserText.label: 'Distance'
      @EndUserText.quickInfo: 'Distance'
      cast(Distance as abap.quan(10,0)) as Distance,
      DistanceUnit
}
