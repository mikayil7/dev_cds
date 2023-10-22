@AbapCatalog.sqlViewName: 'ZMGULIYEV_5241_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 001'
define view ZMGULIYEV_5241_cds_001 as select from mara
left outer join makt on makt.matnr = mara.matnr
{
   mara.matnr,
   makt.maktx
}
