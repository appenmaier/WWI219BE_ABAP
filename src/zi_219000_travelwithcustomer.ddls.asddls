@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel by Customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_219000_TravelWithCustomer
  as select from ZI_219000_TravelExtended as Travel
  association [1] to /dmo/customer as _Customer on Travel.CustomerId = _Customer.customer_id
{
  key Travel.TravelId,
      Travel.AgencyId,
      Travel.CustomerId,
      Travel.BeginDate,
      Travel.EndDate,
      Travel.Price,
      Travel.BookingFee,
      Travel.TotalPrice,
      Travel.CurrencyCode,
      Travel.Description,
      Travel.Status,
      _Customer
}
