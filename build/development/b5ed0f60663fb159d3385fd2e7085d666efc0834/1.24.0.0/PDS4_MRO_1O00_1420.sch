<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:mro  Version:1.4.2.0 - Mon Nov 23 16:13:26 UTC 2026 -->
  <!-- Generated from the PDS4 Information Model Version 1.24.0.0 - System Build 15.1 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/mro/v1" prefix="mro"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/mro:MRO_Parameters">
      <sch:assert test="if ( 
                            (mro:spacecraft_clock_count_partition) 
                            or 
                            ( (contains(mro:spacecraft_clock_start_count, '/') ) 
                               and
                              (contains(mro:spacecraft_clock_stop_count,'/') ) 
                            ) 
                            or 
                            ( (not (mro:spacecraft_clock_count_partition)) 
                               and (not (mro:spacecraft_clock_start_count)) 
                               and (not (mro:spacecraft_clock_stop_count)) 
                            ) 
                           ) then true() else false() 
            ">
        <title>/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/mro:MRO_Parameters/Rule</title>
        
                mro:error:sclk_rule_0: If mro:spacecraft_clock_start_count and mro:spacecraft_clock_stop_count are
                present, they must begin with a partition number followed by a forward slash, OR the partition number must be given by
                mro:spacecraft_clock_count_partition. 
            </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:Array_Sampled/mro:array_scale">
      <sch:assert test=". = ('Exponential', 'Linear', 'Logarithmic')">
        <title>mro:Array_Sampled/mro:array_scale/mro:array_scale</title>
        The attribute mro:Array_Sampled/mro:array_scale must be equal to one of the following values 'Exponential', 'Linear', 'Logarithmic'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Parameters/mro:calibration_lamp_status">
      <sch:assert test=". = ('CLOSED LOOP', 'OFF', 'ON', 'OPEN LOOP')">
        <title>mro:CRISM_Parameters/mro:calibration_lamp_status/mro:calibration_lamp_status</title>
        The attribute mro:CRISM_Parameters/mro:calibration_lamp_status must be equal to one of the following values 'CLOSED LOOP', 'OFF', 'ON', 'OPEN LOOP'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Parameters/mro:frame_rate">
      <sch:assert test=". = ('1.0', '15.0', '3.75', '30.0', '5.0')">
        <title>mro:CRISM_Parameters/mro:frame_rate/mro:frame_rate</title>
        The attribute mro:CRISM_Parameters/mro:frame_rate must be equal to one of the following values '1.0', '15.0', '3.75', '30.0', '5.0'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Parameters/mro:instrument_pointing_mode">
      <sch:assert test=". = ('DYNAMIC POINTING', 'FIXED POINTING')">
        <title>mro:CRISM_Parameters/mro:instrument_pointing_mode/mro:instrument_pointing_mode</title>
        The attribute mro:CRISM_Parameters/mro:instrument_pointing_mode must be equal to one of the following values 'DYNAMIC POINTING', 'FIXED POINTING'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Parameters/mro:light_source_name">
      <sch:assert test=". = ('IR SPHERE LAMP', 'NONE', 'SPHERE LAMP 1', 'SPHERE LAMP 2', 'VNIR SPHERE LAMP')">
        <title>mro:CRISM_Parameters/mro:light_source_name/mro:light_source_name</title>
        The attribute mro:CRISM_Parameters/mro:light_source_name must be equal to one of the following values 'IR SPHERE LAMP', 'NONE', 'SPHERE LAMP 1', 'SPHERE LAMP 2', 'VNIR SPHERE LAMP'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Parameters/mro:observation_type">
      <sch:assert test=". = ('ATO', 'ATU', 'CAL', 'CRL', 'CRM', 'CRS', 'EPF', 'FFC', 'FRS', 'FRT', 'FUN', 'HRL', 'HRS', 'HSP', 'HSV', 'ICL', 'LMB', 'MSP', 'MSV', 'MSW', 'STO', 'TOD', 'UNK')">
        <title>mro:CRISM_Parameters/mro:observation_type/mro:observation_type</title>
        The attribute mro:CRISM_Parameters/mro:observation_type must be equal to one of the following values 'ATO', 'ATU', 'CAL', 'CRL', 'CRM', 'CRS', 'EPF', 'FFC', 'FRS', 'FRT', 'FUN', 'HRL', 'HRS', 'HSP', 'HSV', 'ICL', 'LMB', 'MSP', 'MSV', 'MSW', 'STO', 'TOD', 'UNK'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Parameters/mro:sampling_mode_id">
      <sch:assert test=". = ('HYPERSPECTRAL', 'MULTISPECTRAL')">
        <title>mro:CRISM_Parameters/mro:sampling_mode_id/mro:sampling_mode_id</title>
        The attribute mro:CRISM_Parameters/mro:sampling_mode_id must be equal to one of the following values 'HYPERSPECTRAL', 'MULTISPECTRAL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Parameters/mro:scan_mode_id">
      <sch:assert test=". = ('EPF', 'LONG', 'N/A', 'SHORT')">
        <title>mro:CRISM_Parameters/mro:scan_mode_id/mro:scan_mode_id</title>
        The attribute mro:CRISM_Parameters/mro:scan_mode_id must be equal to one of the following values 'EPF', 'LONG', 'N/A', 'SHORT'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Parameters/mro:shutter_mode_id">
      <sch:assert test=". = ('CLOSED', 'OPEN', 'OTHER', 'SPHERE')">
        <title>mro:CRISM_Parameters/mro:shutter_mode_id/mro:shutter_mode_id</title>
        The attribute mro:CRISM_Parameters/mro:shutter_mode_id must be equal to one of the following values 'CLOSED', 'OPEN', 'OTHER', 'SPHERE'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Parameters/mro:spectral_resampling_flag">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:CRISM_Parameters/mro:spectral_resampling_flag/mro:spectral_resampling_flag</title>
        The attribute mro:CRISM_Parameters/mro:spectral_resampling_flag must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Parameters/mro:wavelength_filter">
      <sch:assert test=". = ('0', '1', '2', '3')">
        <title>mro:CRISM_Parameters/mro:wavelength_filter/mro:wavelength_filter</title>
        The attribute mro:CRISM_Parameters/mro:wavelength_filter must be equal to one of the following values '0', '1', '2', '3'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:binning">
      <sch:assert test=". = ('1', '16', '2', '3', '4', '8')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:binning/mro:binning</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:binning must be equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:channel_number">
      <sch:assert test=". = ('0', '1')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:channel_number/mro:channel_number</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:channel_number must be equal to one of the following values '0', '1'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:cpmm_number">
      <sch:assert test=". = ('0', '1', '10', '11', '12', '13', '2', '3', '4', '5', '6', '7', '8', '9')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:cpmm_number/mro:cpmm_number</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:cpmm_number must be equal to one of the following values '0', '1', '10', '11', '12', '13', '2', '3', '4', '5', '6', '7', '8', '9'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_flag_01">
      <sch:assert test=". = ('NO', 'YES')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_flag_01/mro:dll_locked_flag_01</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_flag_01 must be equal to one of the following values 'NO', 'YES'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_flag_02">
      <sch:assert test=". = ('NO', 'YES')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_flag_02/mro:dll_locked_flag_02</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_flag_02 must be equal to one of the following values 'NO', 'YES'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_once_flag_01">
      <sch:assert test=". = ('NO', 'YES')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_once_flag_01/mro:dll_locked_once_flag_01</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_once_flag_01 must be equal to one of the following values 'NO', 'YES'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_once_flag_02">
      <sch:assert test=". = ('NO', 'YES')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_once_flag_02/mro:dll_locked_once_flag_02</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:dll_locked_once_flag_02 must be equal to one of the following values 'NO', 'YES'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:felics_compression_flag">
      <sch:assert test=". = ('NO', 'YES')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:felics_compression_flag/mro:felics_compression_flag</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:felics_compression_flag must be equal to one of the following values 'NO', 'YES'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_00">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_00/mro:heater_control_flag_00</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_00 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_01">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_01/mro:heater_control_flag_01</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_01 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_02">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_02/mro:heater_control_flag_02</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_02 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_03">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_03/mro:heater_control_flag_03</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_03 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_04">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_04/mro:heater_control_flag_04</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_04 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_05">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_05/mro:heater_control_flag_05</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_05 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_06">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_06/mro:heater_control_flag_06</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_06 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_07">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_07/mro:heater_control_flag_07</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_07 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_08">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_08/mro:heater_control_flag_08</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_08 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_09">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_09/mro:heater_control_flag_09</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_09 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_10">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_10/mro:heater_control_flag_10</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_10 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_11">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_11/mro:heater_control_flag_11</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_11 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_12">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_12/mro:heater_control_flag_12</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_12 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_13">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_13/mro:heater_control_flag_13</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_flag_13 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_mode">
      <sch:assert test=". = ('CLOSED LOOP', 'DUTY CYCLE')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_mode/mro:heater_control_mode</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:heater_control_mode must be equal to one of the following values 'CLOSED LOOP', 'DUTY CYCLE'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:lookup_table_type">
      <sch:assert test=". = ('LINEAR', 'N/A', 'SQUARE ROOT', 'STORED')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:lookup_table_type/mro:lookup_table_type</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:lookup_table_type must be equal to one of the following values 'LINEAR', 'N/A', 'SQUARE ROOT', 'STORED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_00">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_00/mro:powered_cpmm_flag_00</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_00 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_01">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_01/mro:powered_cpmm_flag_01</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_01 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_02">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_02/mro:powered_cpmm_flag_02</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_02 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_03">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_03/mro:powered_cpmm_flag_03</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_03 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_04">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_04/mro:powered_cpmm_flag_04</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_04 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_05">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_05/mro:powered_cpmm_flag_05</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_05 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_06">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_06/mro:powered_cpmm_flag_06</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_06 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_07">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_07/mro:powered_cpmm_flag_07</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_07 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_08">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_08/mro:powered_cpmm_flag_08</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_08 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_09">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_09/mro:powered_cpmm_flag_09</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_09 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_10">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_10/mro:powered_cpmm_flag_10</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_10 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_11">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_11/mro:powered_cpmm_flag_11</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_11 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_12">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_12/mro:powered_cpmm_flag_12</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_12 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_13">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_13/mro:powered_cpmm_flag_13</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:powered_cpmm_flag_13 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:stimulation_lamp_flag_blg">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:stimulation_lamp_flag_blg/mro:stimulation_lamp_flag_blg</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:stimulation_lamp_flag_blg must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:stimulation_lamp_flag_nir">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:stimulation_lamp_flag_nir/mro:stimulation_lamp_flag_nir</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:stimulation_lamp_flag_nir must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:stimulation_lamp_flag_red">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:stimulation_lamp_flag_red/mro:stimulation_lamp_flag_red</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:stimulation_lamp_flag_red must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_Instrument_Setting_Parameters/mro:tdi">
      <sch:assert test=". = ('128', '32', '64', '8')">
        <title>mro:HiRISE_Instrument_Setting_Parameters/mro:tdi/mro:tdi</title>
        The attribute mro:HiRISE_Instrument_Setting_Parameters/mro:tdi must be equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_bg12">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_bg12/mro:binning_bg12</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_bg12 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_bg13">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_bg13/mro:binning_bg13</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_bg13 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_ir10">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_ir10/mro:binning_ir10</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_ir10 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_ir11">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_ir11/mro:binning_ir11</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_ir11 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_red0">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_red0/mro:binning_red0</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_red0 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_red1">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_red1/mro:binning_red1</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_red1 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_red2">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_red2/mro:binning_red2</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_red2 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_red3">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_red3/mro:binning_red3</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_red3 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_red4">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_red4/mro:binning_red4</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_red4 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_red5">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_red5/mro:binning_red5</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_red5 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_red6">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_red6/mro:binning_red6</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_red6 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_red7">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_red7/mro:binning_red7</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_red7 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_red8">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_red8/mro:binning_red8</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_red8 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:binning_red9">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('1', '16', '2', '3', '4', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:binning_red9/mro:binning_red9</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:binning_red9 must be nulled or equal to one of the following values '1', '16', '2', '3', '4', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_bg12">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_bg12/mro:ccd_flag_bg12</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_bg12 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_bg13">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_bg13/mro:ccd_flag_bg13</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_bg13 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_ir10">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_ir10/mro:ccd_flag_ir10</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_ir10 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_ir11">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_ir11/mro:ccd_flag_ir11</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_ir11 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_red0">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_red0/mro:ccd_flag_red0</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_red0 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_red1">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_red1/mro:ccd_flag_red1</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_red1 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_red2">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_red2/mro:ccd_flag_red2</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_red2 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_red3">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_red3/mro:ccd_flag_red3</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_red3 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_red4">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_red4/mro:ccd_flag_red4</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_red4 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_red5">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_red5/mro:ccd_flag_red5</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_red5 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_red6">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_red6/mro:ccd_flag_red6</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_red6 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_red7">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_red7/mro:ccd_flag_red7</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_red7 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_red8">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_red8/mro:ccd_flag_red8</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_red8 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:ccd_flag_red9">
      <sch:assert test=". = ('OFF', 'ON')">
        <title>mro:HiRISE_RDR_Parameters/mro:ccd_flag_red9/mro:ccd_flag_red9</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:ccd_flag_red9 must be equal to one of the following values 'OFF', 'ON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_bg12">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_bg12/mro:special_processing_flag_bg12</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_bg12 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_bg13">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_bg13/mro:special_processing_flag_bg13</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_bg13 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_ir10">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_ir10/mro:special_processing_flag_ir10</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_ir10 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_ir11">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_ir11/mro:special_processing_flag_ir11</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_ir11 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red0">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red0/mro:special_processing_flag_red0</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red0 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red1">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red1/mro:special_processing_flag_red1</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red1 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red2">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red2/mro:special_processing_flag_red2</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red2 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red3">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red3/mro:special_processing_flag_red3</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red3 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red4">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red4/mro:special_processing_flag_red4</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red4 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red5">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red5/mro:special_processing_flag_red5</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red5 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red6">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red6/mro:special_processing_flag_red6</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red6 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red7">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red7/mro:special_processing_flag_red7</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red7 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red8">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red8/mro:special_processing_flag_red8</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red8 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red9">
      <sch:assert test=". = ('BADCAL', 'CUBENORM', 'NOMINAL', 'NULL')">
        <title>mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red9/mro:special_processing_flag_red9</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:special_processing_flag_red9 must be equal to one of the following values 'BADCAL', 'CUBENORM', 'NOMINAL', 'NULL'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_bg12">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_bg12/mro:tdi_bg12</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_bg12 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_bg13">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_bg13/mro:tdi_bg13</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_bg13 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_ir10">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_ir10/mro:tdi_ir10</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_ir10 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_ir11">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_ir11/mro:tdi_ir11</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_ir11 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_red0">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_red0/mro:tdi_red0</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_red0 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_red1">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_red1/mro:tdi_red1</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_red1 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_red2">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_red2/mro:tdi_red2</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_red2 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_red3">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_red3/mro:tdi_red3</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_red3 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_red4">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_red4/mro:tdi_red4</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_red4 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_red5">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_red5/mro:tdi_red5</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_red5 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_red6">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_red6/mro:tdi_red6</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_red6 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_red7">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_red7/mro:tdi_red7</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_red7 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_red8">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_red8/mro:tdi_red8</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_red8 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:HiRISE_RDR_Parameters/mro:tdi_red9">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('128', '32', '64', '8')))) then false() else true()">
        <title>mro:HiRISE_RDR_Parameters/mro:tdi_red9/mro:tdi_red9</title>
        The attribute mro:HiRISE_RDR_Parameters/mro:tdi_red9 must be nulled or equal to one of the following values '128', '32', '64', '8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:MRO_Parameters/mro:mission_phase_name">
      <sch:assert test=". = ('Aerobraking', 'Approach and Orbit Insertion', 'Cruise', 'Extended Mission 1', 'Extended Mission 2', 'Extended Mission 3', 'Extended Mission 4', 'Extended Mission 5', 'Extended Mission 6', 'Extended Science', 'Launch', 'Primary Science')">
        <title>mro:MRO_Parameters/mro:mission_phase_name/mro:mission_phase_name</title>
        The attribute mro:MRO_Parameters/mro:mission_phase_name must be equal to one of the following values 'Aerobraking', 'Approach and Orbit Insertion', 'Cruise', 'Extended Mission 1', 'Extended Mission 2', 'Extended Mission 3', 'Extended Mission 4', 'Extended Mission 5', 'Extended Mission 6', 'Extended Science', 'Launch', 'Primary Science'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:MRO_Parameters/mro:product_type">
      <sch:assert test=". = ('CDR', 'DDR', 'DTM', 'EDR', 'EDR_Browse', 'LDR', 'MRDR', 'MTRDR', 'MTRDR_Browse', 'MTRDR_Extras', 'ORTHOIMAGE', 'RDR', 'TER', 'TER_Browse', 'TER_Extras', 'TRDR', 'TRDR_Browse', 'TRDR_Extras', 'VRDR', 'VRDR_Browse')">
        <title>mro:MRO_Parameters/mro:product_type/mro:product_type</title>
        The attribute mro:MRO_Parameters/mro:product_type must be equal to one of the following values 'CDR', 'DDR', 'DTM', 'EDR', 'EDR_Browse', 'LDR', 'MRDR', 'MTRDR', 'MTRDR_Browse', 'MTRDR_Extras', 'ORTHOIMAGE', 'RDR', 'TER', 'TER_Browse', 'TER_Extras', 'TRDR', 'TRDR_Browse', 'TRDR_Extras', 'VRDR', 'VRDR_Browse'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:SHARAD_Observation_Parameters/mro:azimuth_spacing_type">
      <sch:assert test=". = ('NOT UNIFORM', 'UNIFORM')">
        <title>mro:SHARAD_Observation_Parameters/mro:azimuth_spacing_type/mro:azimuth_spacing_type</title>
        The attribute mro:SHARAD_Observation_Parameters/mro:azimuth_spacing_type must be equal to one of the following values 'NOT UNIFORM', 'UNIFORM'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:SHARAD_Observation_Parameters/mro:closed_loop_tracking_flag">
      <sch:assert test=". = ('DISABLED', 'ENABLED')">
        <title>mro:SHARAD_Observation_Parameters/mro:closed_loop_tracking_flag/mro:closed_loop_tracking_flag</title>
        The attribute mro:SHARAD_Observation_Parameters/mro:closed_loop_tracking_flag must be equal to one of the following values 'DISABLED', 'ENABLED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:SHARAD_Observation_Parameters/mro:compression_selection_flag">
      <sch:assert test=". = ('DYNAMIC', 'STATIC')">
        <title>mro:SHARAD_Observation_Parameters/mro:compression_selection_flag/mro:compression_selection_flag</title>
        The attribute mro:SHARAD_Observation_Parameters/mro:compression_selection_flag must be equal to one of the following values 'DYNAMIC', 'STATIC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:SHARAD_Observation_Parameters/mro:data_quality_id">
      <sch:assert test=". = ('0', '1', '2', '3', '4', 'N/A')">
        <title>mro:SHARAD_Observation_Parameters/mro:data_quality_id/mro:data_quality_id</title>
        The attribute mro:SHARAD_Observation_Parameters/mro:data_quality_id must be equal to one of the following values '0', '1', '2', '3', '4', 'N/A'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:SHARAD_Observation_Parameters/mro:numerical_filter_type">
      <sch:assert test=". = ('INVERSE', 'MATCHED')">
        <title>mro:SHARAD_Observation_Parameters/mro:numerical_filter_type/mro:numerical_filter_type</title>
        The attribute mro:SHARAD_Observation_Parameters/mro:numerical_filter_type must be equal to one of the following values 'INVERSE', 'MATCHED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:SHARAD_Observation_Parameters/mro:phase_compensation_type">
      <sch:assert test=". = ('NO COMPENSATION', 'RADIAL VELOCITY', 'RADIAL VELOCITY AND SURFACE SLOPE', 'SURFACE SLOPE')">
        <title>mro:SHARAD_Observation_Parameters/mro:phase_compensation_type/mro:phase_compensation_type</title>
        The attribute mro:SHARAD_Observation_Parameters/mro:phase_compensation_type must be equal to one of the following values 'NO COMPENSATION', 'RADIAL VELOCITY', 'RADIAL VELOCITY AND SURFACE SLOPE', 'SURFACE SLOPE'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:SHARAD_Observation_Parameters/mro:phase_correction_type">
      <sch:assert test=". = ('NONE', 'PHASE GRADIENT AUTOFOCUS')">
        <title>mro:SHARAD_Observation_Parameters/mro:phase_correction_type/mro:phase_correction_type</title>
        The attribute mro:SHARAD_Observation_Parameters/mro:phase_correction_type must be equal to one of the following values 'NONE', 'PHASE GRADIENT AUTOFOCUS'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:SHARAD_Observation_Parameters/mro:product_version_type">
      <sch:assert test=". = ('PREDICTED', 'RECONSTRUCTED')">
        <title>mro:SHARAD_Observation_Parameters/mro:product_version_type/mro:product_version_type</title>
        The attribute mro:SHARAD_Observation_Parameters/mro:product_version_type must be equal to one of the following values 'PREDICTED', 'RECONSTRUCTED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:SHARAD_Observation_Parameters/mro:weighting_function_name">
      <sch:assert test=". = ('CHEBYCHEV', 'HANNING', 'KAISER', 'UNIFORM')">
        <title>mro:SHARAD_Observation_Parameters/mro:weighting_function_name/mro:weighting_function_name</title>
        The attribute mro:SHARAD_Observation_Parameters/mro:weighting_function_name must be equal to one of the following values 'CHEBYCHEV', 'HANNING', 'KAISER', 'UNIFORM'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
