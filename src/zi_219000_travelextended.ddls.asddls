@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel Extended'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_219000_TravelExtended
  as select from ZI_219000_Travel
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      cast(cast(TotalPrice as abap.dec(16,2)) - cast(BookingFee as abap.dec(16,2)) as abap.curr(16,2)) as Price,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      Description,
      case Status
        when 'B' then 'Booked'
        when 'N' then 'New'
        when 'P' then 'Planned'
        else ''
      end                                                                                              as Status
}
