@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel with Customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_219000_TravelWithCustomer
  as select from ZI_219000_TravelWithCustomer
{
  key TravelId,
      AgencyId,
      CustomerId,
      _Customer.first_name as FirstName,
      _Customer.last_name  as LastName,
      BeginDate,
      EndDate,
      Price,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      Status
}
