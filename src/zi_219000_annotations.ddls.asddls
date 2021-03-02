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
@UI.headerInfo:{
    typeName: 'Connection',
    typeNamePlural: 'Connections'
}
define view entity ZI_219000_Annotations
  as select from ZI_219000_Syntax
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
  key CarrierId,
      @UI:{
            selectionField: [{ position: 20 }],
            lineItem: [{ position: 20 }],
            identification: [{ position: 20 }]
      }
  key ConnectionId,
      @UI:{
            selectionField: [{ position: 30 }],
            lineItem: [{ position: 30 }],
            identification: [{ position: 30 }]
      }
      @Search:{
            defaultSearchElement: true,
            fuzzinessThreshold: 0.5
      }
      AirportFromId,
      @UI:{
            selectionField: [{ position: 40 }],
            lineItem: [{ position: 40 }],
            identification: [{ position: 40 }]
      }
      @Search:{
            defaultSearchElement: true,
            fuzzinessThreshold: 0.5
      }
      AirportToId,
      @UI:{
            identification: [{ position: 50 }]
      }
      DepartureTime,
      @UI:{
            identification: [{ position: 60 }]
      }
      ArrivalTime,
      @UI:{
            lineItem: [{ position: 50 }],
            identification: [{ position: 70 }]
      }
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      @EndUserText.label: 'Distance'
      @EndUserText.quickInfo: 'Distance'
      cast(Distance as abap.quan(10,0)) as Distance,
      @UI.hidden: true
      DistanceUnit
}
