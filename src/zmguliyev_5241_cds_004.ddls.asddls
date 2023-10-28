@AbapCatalog.sqlViewName: 'ZMGULIYEV_5241V4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 004'
define view    zmguliyev_5241_cds_004 
as select from zmguliyev_5241_cds_003 as cds003
{
    cds003.vbeln,
    sum(cds003.conversion_netwr)                                  as Toplam_Net_Deger,
    cds003.kunnrAd,
    count(*)                                                      as Toplam_Fatura_Adedi,
    division(cast( sum(conversion_netwr) as abap.curr( 10, 3 ) ), 
             cast( count(*) as abap.int1 ), 3)                    as Ortalama_Miktar,
    left(fkdat,4)                                                 as Faturalama_Yili,
    substring(fkdat,5,2)                                          as Faturalama_Ayi,
    substring(fkdat,7,2)                                          as Faturalama_Gunu,
    substring(inco2_l,1,3)                                        as Incoterm_Yeri,
    fkdat
}
group by cds003.vbeln,
         cds003.kunnrAd,
         cds003.fkdat,
         cds003.inco2_l
