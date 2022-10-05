<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:mro  Version:1.0.0.0 - Wed Oct 05 14:44:06 UTC 2022 -->
  <!-- Generated from the PDS4 Information Model Version 1.18.0.0 - System Build 12.1 -->
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
    <sch:rule context="mro:CRISM_Parameters/mro:observation_type">
      <sch:assert test=". = ('ATO', 'ATU', 'CAL', 'EPF', 'FFC', 'FRS', 'FRT', 'FUN', 'HRL', 'HRS', 'HSP', 'HSV', 'ICL', 'LMB', 'MSP', 'MSV', 'MSW', 'STO', 'TOD', 'UNK')">
        <title>mro:CRISM_Parameters/mro:observation_type/mro:observation_type</title>
        The attribute mro:CRISM_Parameters/mro:observation_type must be equal to one of the following values 'ATO', 'ATU', 'CAL', 'EPF', 'FFC', 'FRS', 'FRT', 'FUN', 'HRL', 'HRS', 'HSP', 'HSV', 'ICL', 'LMB', 'MSP', 'MSV', 'MSW', 'STO', 'TOD', 'UNK'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Temperatures/mro:detector_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>mro:CRISM_Temperatures/mro:detector_temperature/mro:detector_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Temperatures/mro:fpe_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>mro:CRISM_Temperatures/mro:fpe_temperature/mro:fpe_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Temperatures/mro:optical_bench_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>mro:CRISM_Temperatures/mro:optical_bench_temperature/mro:optical_bench_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Temperatures/mro:spectrometer_housing_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>mro:CRISM_Temperatures/mro:spectrometer_housing_temperature/mro:spectrometer_housing_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="mro:CRISM_Temperatures/mro:sphere_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>mro:CRISM_Temperatures/mro:sphere_temperature/mro:sphere_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
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
      <sch:assert test=". = ('CDR', 'DDR', 'EDR', 'LDR', 'MRDR', 'MTRDR', 'MTRDR_Browse', 'MTRDR_Extras', 'RDR', 'TER', 'TER_Browse', 'TER_Extras', 'TRDR', 'TRDR_Browse', 'TRDR_Extras')">
        <title>mro:MRO_Parameters/mro:product_type/mro:product_type</title>
        The attribute mro:MRO_Parameters/mro:product_type must be equal to one of the following values 'CDR', 'DDR', 'EDR', 'LDR', 'MRDR', 'MTRDR', 'MTRDR_Browse', 'MTRDR_Extras', 'RDR', 'TER', 'TER_Browse', 'TER_Extras', 'TRDR', 'TRDR_Browse', 'TRDR_Extras'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
