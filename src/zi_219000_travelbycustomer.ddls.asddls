@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel by Customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_219000_TravelByCustomer
  as select from ZI_219000_TravelExtended
{
  key concat_with_space(TravelId,Description,1) as Travel,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      dats_days_between(BeginDate,EndDate)      as Duration,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      currency_conversion(
        amount => Price,
        source_currency => CurrencyCode,
        target_currency => cast('EUR' as abap.cuky),
        exchange_rate_date => BeginDate)        as Price,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      currency_conversion(
        amount => BookingFee,
        source_currency => CurrencyCode,
        target_currency => cast('EUR' as abap.cuky),
        exchange_rate_date => BeginDate)        as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      currency_conversion(
        amount => TotalPrice,
        source_currency => CurrencyCode,
        target_currency => cast('EUR' as abap.cuky),
        exchange_rate_date => BeginDate)        as TotalPrice,
      cast('EUR' as abap.cuky)                  as CurrencyCode,
      Status
}
