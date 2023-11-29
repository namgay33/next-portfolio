SELECT Convert(Max(ecmsp.ttfb_dec_declaration.submitted_by), char(500))
       AS
       submitted_by,
       Convert(Max(ecmsp.ttfb_dec_declaration.submitted_date), char(500))
       AS submitted_date,
       Convert(Max((SELECT pin
            FROM   ecmsp.ttfb_tpr_party
            WHERE  party_id = ecmsp.ttfb_dec_declaration.declarant_id)), char(500))
       AS CFA_TPN,
       Convert(Max((SELECT NAME
            FROM   ecmsp.ttfb_tpr_party
            WHERE  party_id = ecmsp.ttfb_dec_declaration.declarant_id)), char(500))
       AS CFA_Name,
       Convert(Max(ecmsp.ttfb_dec_declaration.declarant_name), char(500))
       AS Login_ID,
       Convert(Max((SELECT Concat(name1, ' ', name2, ' ', name3)
            FROM   ttfb_tpr_user_profile
            WHERE  login_id = ecmsp.ttfb_dec_declaration.declarant_name)), char(500))
       AS
       Declarant_Name,
       Convert(Max(ecmsp.ttfb_dec_declaration.regime_id), char(500))
       AS regime_id,
       Convert(Max((SELECT description_eng
            FROM   ecmsp.ttfb_sys_regime
            WHERE  code = ecmsp.ttfb_dec_declaration.regime_id)), char(500))
       AS Regime,
       Convert(Max(ecmsp.ttfb_dec_declaration.rrco), char(500))
       AS rrco,
       Convert(Max((SELECT description_eng
            FROM   ecmsp.ttfb_sys_province
            WHERE  code = ecmsp.ttfb_dec_declaration.rrco)), char(500))
       AS RRCO_Office,
       Convert(Max(ecmsp.ttfb_dec_declaration.office_of_declaration_id), char(500))
       AS Checkpost_Code,
       Convert(Max((SELECT description_eng
            FROM   ecmsp.ttfb_sys_customs_office
            WHERE  code = ecmsp.ttfb_dec_declaration.office_of_declaration_id)), char(500))
       AS
       Checkpost,
       Convert(Max(ecmsp.ttfb_dec_declaration.declaration_id), char(500))
       AS declaration_id,
       Convert(Max(ecmsp.ttfb_dec_declaration.declaration_number), char(500))
       AS declaration_number,
       Convert(Max(ecmsp.ttfb_dec_declaration.submitted_date), char(500))
       AS Declaration_date,
       Convert(Max(ecmsp.ttfb_dec_declaration.cpc_group_id), char(500))
       AS CPCGroupCode,
       Convert(Max((SELECT cpc_group_desc_eng
            FROM   ecmsp.tcms_trf_cpc_group
            WHERE  cpc_group_id = ecmsp.ttfb_dec_declaration.cpc_group_id)), char(500))
       AS CPCName,
       Convert(Max(ecmsp.ttfb_dec_declaration.importer_code), char(500))
       AS Importer_TPN,
       Convert(Max(ecmsp.ttfb_dec_declaration.importer_name), char(500))
       AS Importer_Name,
       Convert(Max(ecmsp.ttfb_dec_declaration.importer_address), char(500))
       AS Importer_Address,
       Convert(Max(ecmsp.ttfb_dec_declaration.exporter_address), char(500))
       AS Exporter_Address,
       Convert(Max(ecmsp.ttfb_dec_declaration.exporter_code), char(500))
       AS Exporter_TPN,
       Convert(Max(ecmsp.ttfb_dec_declaration.exporter_name), char(500))
       AS Exporter_Name,
       Convert(Max(ecmsp.ttfb_dec_declaration.country_of_export_id), char(500))
       AS country_of_export_id,
       Convert((SELECT description_eng
        FROM  ecmsp.ttfb_sys_country
        WHERE  code = Max(ecmsp.ttfb_dec_declaration.country_of_export_id)), char(500))
       AS
       CountryofExportation,
       Convert(Max(ecmsp.ttfb_dec_declaration.country_of_destination_id), char(500))
       AS
       country_of_destination_id,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_country
        WHERE  code = Max(ecmsp.ttfb_dec_declaration.country_of_destination_id)), char(500))
       AS
       CountryofImportation,
       Convert(Max(ecmsp.ttfb_dec_declaration.port_of_entry_id), char(500))
       AS port_of_entry_id,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_port
        WHERE  code = Max(ecmsp.ttfb_dec_declaration.port_of_entry_id)), char(500))
       AS PortofEntry,
       Convert(Max(ecmsp.ttfb_dec_declaration.port_of_exit_id), char(500))
       AS port_of_exit_id,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_port
        WHERE  code = Max(ecmsp.ttfb_dec_declaration.port_of_exit_id)), char(500))
       AS PortofExit,
       Convert(Max(ecmsp.ttfb_dec_declaration.processing_status_id), char(500))
       AS Status_code,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_status
        WHERE  id = Max(ecmsp.ttfb_dec_declaration.processing_status_id)), char(500))
       AS Status,
       Convert(Max(ecmsp.ttfb_dec_declaration.mode_of_transport), char(500))
       AS mode_of_transport,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_transport_mode
        WHERE  code = Max(ecmsp.ttfb_dec_declaration.mode_of_transport)), char(500))
       AS
       mode_of_transport_description,
       Convert(Max(ecmsp.ttfb_dec_declaration.importer_country_code), char(500))
       AS importer_country_code,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_country
        WHERE  code = Max(ecmsp.ttfb_dec_declaration.importer_country_code)), char(500))
       AS
       importer_country,
       Convert(Max(ecmsp.ttfb_dec_declaration.exporter_country_code), char(500))
       AS exporter_country_code,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_country
        WHERE  code = Max(ecmsp.ttfb_dec_declaration.exporter_country_code)), char(500))
       AS
       Exporter_country,
       Convert((SELECT Max(exemption_number)
        FROM   ecmsp.ttfb_exm_header
        WHERE  exemption_id = Max(ecmsp.ttfb_dec_declaration.exemption_id)), char(500))
       AS
       Exemption_Number,
       Convert(Max(ecmsp.ttfb_dec_declaration.exemption_id), char(500))
       AS exemption_id,
       Convert(Max(ecmsp.ttfb_dec_invoice.invoice_no), char(500))
       AS invoice_no,
       Convert(Max(ecmsp.ttfb_dec_invoice.invoice_date), char(500))
       AS invoice_date,
       Convert(Max(ecmsp.ttfb_dec_invoice.incoterms_id), char(500))
       AS incoterms_id,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_code_master
        WHERE  code = Max(ecmsp.ttfb_dec_invoice.incoterms_id)), char(500))
       AS incoterm,
       Convert(Max(ecmsp.ttfb_dec_invoice.inv_currency_id), char(500))
       AS inv_currency_id,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_currency
        WHERE  code = Max(ecmsp.ttfb_dec_invoice.inv_currency_id)), char(500))
       AS currency,
       Convert(Max(ecmsp.ttfb_dec_invoice.inv_exc_rate), char(500))
       AS inv_exc_rate,
       Convert(Max(ecmsp.ttfb_dec_item_value.item_id), char(500))
       AS item_id,
       Convert(Max(ecmsp.ttfb_dec_item.hscode_id), char(500))
       AS hscode_id,
       Convert((SELECT code
        FROM   ecmsp.tcms_trf_hscode
        WHERE  hscode_id = Max(ecmsp.ttfb_dec_item.hscode_id)), char(500))
       AS HS_Code,
       Convert(Max(ecmsp.ttfb_dec_item.description),  char(500))
       AS description,
       Convert(Max(ecmsp.ttfb_dec_item.comm_name_oth_desc), char(500))
       AS CommercialDescription,
       Convert(Max(ecmsp.ttfb_dec_item.country_of_origin_id), char(500))
       AS country_of_origin_id,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_country
        WHERE  code = Max(ecmsp.ttfb_dec_item.country_of_origin_id)), char(500))
       AS
       country_of_origin,
       Convert(Max(ecmsp.ttfb_dec_item.cpc_id), char(500))
       AS cpc_id,
       Convert(Max(ecmsp.ttfb_dec_item.quantity), char(500))
       AS quantity,
       Convert(Max(ecmsp.ttfb_dec_item.quantity_uom_id), char(500))
       AS quantity_uom_id,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_uom
        WHERE  code = Max(ecmsp.ttfb_dec_item.quantity_uom_id)), char(500))
       AS unit_of_measurement,
       Convert(Max(ecmsp.ttfb_dec_item.country_group), char(500))
       AS country_group,
       Convert((SELECT description_eng
        FROM   ecmsp.ttfb_sys_country_group
        WHERE  code = Max(ecmsp.ttfb_dec_item.country_group)), char(500))
       AS
       country_group_description,
       Convert(Max(ecmsp.ttfb_dec_item.inv_amt), char(500))
       AS DeclaredAmount,
       Convert(Max(ecmsp.ttfb_dec_item_value.cust_inv_amt_local_curr), char(500))
       AS DeclaredAmountInNu,
       Convert(Max(ecmsp.ttfb_dec_item.fre_amt), char(500))
       AS FreightAmount,
       Convert(Max(ecmsp.ttfb_dec_item_value.fre_amt_local_curr), char(500))
       AS FreightAmountInNu,
       Convert(Max(ecmsp.ttfb_dec_item.ins_amt), char(500))
       AS InsuranceAmount,
       Convert(Max(ecmsp.ttfb_dec_item_value.ins_amt_local_curr), char(500))
       AS InsuranceAmountInNu,
       Convert(Max(ecmsp.ttfb_dec_item.oth_amt), char(500))
       AS OtherAmount,
       Convert(Max(ecmsp.ttfb_dec_item_value.oth_amt_local_curr), char(500))
       AS OtherAmountInNu,
       Convert(Max(ecmsp.ttfb_dec_item_value.customs_value), char(500))
       AS customs_value,
       Convert(Max(ecmsp.ttfb_pmt_paytxn.voucher_nbr), char(500))
       AS Voucher_Number,
       Convert(Max(ecmsp.ttfb_pmt_paytxn.receipt_nbr), char(500))
       AS Receipt_Number,
       Convert(Max(ecmsp.ttfb_pmt_paytxn.created_date), char(500))
       AS Receipt_Date,
       Convert(Max(ecmsp.ttfb_dec_bill_of_lading.manifest_number), char(500))
       AS Manifest_Number,
       Convert(Max(ecmsp.ttfb_dec_bill_of_lading.cross_border_trans_means_id), char(500))
       AS Flight_Number,
       Convert(Max(ecmsp.ttfb_road_manifest_hdr.veh_reg_no), char(500))
       AS Vehicle_Number,
       Convert(Max(ecmsp.tcms_rel_release.release_order_date), char(500))
       AS Release_date,
      Convert(Max((SELECT Concat(Ifnull(name1, ''), ' ', Ifnull(name2, ''), ' ',
                   Ifnull(name3, '')
                       )
            FROM   ttfb_tpr_user_profile
            WHERE  user_profile_id IN (SELECT user_profile_id
                                       FROM   ttfb_tpr_user
                                       WHERE  user_id =
ttfb_dec_approval.updated_by
                                              AND
                                      ttfb_dec_approval.declaration_id =
       ecmsp.ttfb_dec_declaration.declaration_id
       ))), char(500))
       AS Approved_by,
Convert(Max(ttfb_tpr_user.designation), char(500)) AS designation

FROM   ecmsp.ttfb_dec_item_value
       INNER JOIN ecmsp.ttfb_dec_item
               ON ecmsp.ttfb_dec_item_value.item_id =
                  ecmsp.ttfb_dec_item.item_id
       INNER JOIN ecmsp.ttfb_dec_declaration
                  INNER JOIN ecmsp.ttfb_dec_bill_of_lading
                          ON ecmsp.ttfb_dec_declaration.declaration_id =
                             ecmsp.ttfb_dec_bill_of_lading.declaration_id
                  INNER JOIN ecmsp.ttfb_dec_invoice
                          ON ecmsp.ttfb_dec_declaration.declaration_id =
                             ecmsp.ttfb_dec_invoice.declaration_id
               ON ecmsp.ttfb_dec_item.invoice_id =
                  ecmsp.ttfb_dec_invoice.invoice_id
       LEFT OUTER JOIN ecmsp.tcms_rel_release
                    ON ecmsp.ttfb_dec_declaration.declaration_id =
                       ecmsp.tcms_rel_release.declaration_id
       LEFT OUTER JOIN ecmsp.ttfb_pmt_paytxn
                    ON ecmsp.ttfb_dec_declaration.declaration_number =
                       ecmsp.ttfb_pmt_paytxn.bustxn_ref_nbr
       LEFT OUTER JOIN ecmsp.ttfb_road_manifest_hdr
                    ON ecmsp.ttfb_dec_bill_of_lading.manifest_number =
                       ecmsp.ttfb_road_manifest_hdr.rotation_no
	   LEFT JOIN ecmsp.ttfb_dec_approval
              ON ecmsp.ttfb_dec_declaration.declaration_id = 
                 ecmsp.ttfb_dec_approval.declaration_id
       LEFT JOIN ttfb_tpr_user
              ON ecmsp.ttfb_dec_approval.updated_by = ttfb_tpr_user.user_id
WHERE
  -- ecmsp.ttfb_dec_declaration.processing_status_id IN ( 350, 908 )
  -- AND 
  ecmsp.ttfb_dec_declaration.regime_id = 4
  AND ecmsp.ttfb_road_manifest_hdr.man_update_id IS NULL
  AND ecmsp.ttfb_dec_declaration.submitted_date IS NOT NULL
 -- and ecmsp.ttfb_dec_declaration.DECLARATION_ID=201360
GROUP  BY ecmsp.ttfb_dec_declaration.declaration_number,
          ecmsp.ttfb_dec_item.hscode_id,
          ecmsp.ttfb_dec_item.item_id 