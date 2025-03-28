Profile: BundlePsXpandh
Parent: $Bundle-uv-ips
Id: Bundle-ps-xpandh
Title: "Bundle (EU PS)"
Description: "Clinical document used to represent a Patient Summary for the scope of the XpanDH project."
* ^publisher = "XpanDH Project"
* ^copyright = "XpanDH Project"
* . ^short = "Patient Summary bundle"
* . ^definition = "Patient Summary bundle."

* entry[composition].resource 1..
* entry[composition].resource only CompositionPsXpandh
* entry[patient].resource 1..
* entry[patient].resource only PatientPsXpandh
* entry[allergyintolerance].resource 1..
* entry[allergyintolerance].resource only AllergyIntoleranceXpandh
* entry[condition].resource 1..
* entry[condition].resource only ConditionPsXpandh
* entry[device].resource 1..
* entry[device].resource only Device
* entry[deviceusestatement].resource 1..
* entry[deviceusestatement].resource only DeviceUseStatementXpandh

/* * entry[diagnosticreport].resource 1..
* entry[diagnosticreport].resource only $DiagnosticReportXpandh
* entry[imagingstudy].resource 1..
* entry[imagingstudy].resource only $ImagingStudyXpandh */

* entry[immunization].resource 1..
* entry[immunization].resource only ImmunizationPsXpandh

/* * entry[media].resource 1..
* entry[media].resource only $Media-observation-uv-ips */
* entry[medication].resource 1..
* entry[medication].resource only MedicationPsXpandh

/* * entry[medicationrequest].resource 1..
* entry[medicationrequest].resource only $MedicationRequest-uv-ips */

* entry[medicationstatement].resource 1..
* entry[medicationstatement].resource only MedicationStatementPsXpandh


* entry[practitioner].resource 1..
* entry[practitioner].resource only PractitionerXpandh
* entry[practitionerrole].resource 1..
* entry[practitionerrole].resource only PractitionerRoleXpandh

/*  COMMENTED TO BY-PASS A BUILD ERROR TO BE ANALYZED  */
* entry[procedure].resource 1..
* entry[procedure].resource only ProcedurePsXpandh

/*
* entry[organization].resource 1..
* entry[organization].resource only $Organization-uv-ips
* entry[observation-pregnancy-edd].resource 1..
* entry[observation-pregnancy-edd].resource only $Observation-pregnancy-edd-uv-ips
* entry[observation-pregnancy-outcome].resource 1..
* entry[observation-pregnancy-outcome].resource only $Observation-pregnancy-outcome-uv-ips
* entry[observation-pregnancy-status].resource 1..
* entry[observation-pregnancy-status].resource only $Observation-pregnancy-status-uv-ips */

/* 
In this case a generic social history observation is used

* entry[observation-alcohol-use].resource 1..
* entry[observation-alcohol-use].resource only $Observation-alcoholuse-uv-ips
* entry[observation-tobacco-use].resource 1..
* entry[observation-tobacco-use].resource only $Observation-tobaccouse-uv-ips
 */

* entry contains observation-social-history 0.. 
* entry[observation-social-history] 0..
* entry[observation-social-history] ^short = "Social History Observation"
* entry[observation-social-history] ^definition = "Slice including a generic social history Observation"
* entry[observation-social-history].resource only ObservationSocialHistoryXpandh
* entry[observation-results].resource 1..
* entry[observation-results].resource only ObservationResultsXpandh

/*
* entry[specimen].resource 1..
 * entry[specimen].resource only $Specimen-uv-ips */
