@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 2: Annotations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@UI.headerInfo:{
    typeName: 'Connection',
    typeNamePlural: 'Connections'
}
define view entity ZI_219000_Annotations
  as select from /dmo/connection
{

      @UI.facet: [{ id: 'idIdentification',
                    type: #IDENTIFICATION_REFERENCE ,
                    label : 'General Information',
                    position: 10 }]
      @UI:{
            selectionField: [{ position: 10 }],
            lineItem: [{ position: 10 }],
            identification: [{ position: 10 }]
      }
  key carrier_id                        as CarrierId,
      @UI:{
            selectionField: [{ position: 20 }],
            lineItem: [{ position: 20 }],
            identification: [{ position: 20 }]
      }
  key connection_id                     as ConnectionId,
      @UI:{
            selectionField: [{ position: 30 }],
            lineItem: [{ position: 30 }],
            identification: [{ position: 30 }]
      }
      @Search:{
            defaultSearchElement: true,
            fuzzinessThreshold: 0.5
      }
      airport_from_id                   as AirportFromId,
      @UI:{
            selectionField: [{ position: 40 }],
            lineItem: [{ position: 40 }],
            identification: [{ position: 40 }]
      }
      @Search:{
            defaultSearchElement: true,
            fuzzinessThreshold: 0.5
      }
      airport_to_id                     as AirportToId,
      @UI:{
            identification: [{ position: 50 }]
      }
      departure_time                    as DepartureTime,
      @UI:{
            identification: [{ position: 60 }]
      }
      arrival_time                      as ArrivalTime,
      @UI:{
            lineItem: [{ position: 50 }],
            identification: [{ position: 70 }]
      }
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      cast(distance as abap.quan(16,2)) as Distance,
      @UI.hidden: true
      distance_unit                     as DistanceUnit
}
