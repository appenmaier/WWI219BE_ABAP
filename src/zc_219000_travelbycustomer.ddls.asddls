@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel by Customer'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_219000_TravelByCustomer
  as select from ZI_219000_TravelByCustomer
{
  key CustomerId,
      count(*)        as NumberOfTravels,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum(TotalPrice) as TotalExpenses,
      CurrencyCode
}
group by
  CurrencyCode,
  CustomerId
having
  count(*) > 10
