// -------------------------------------------------------------------------------					
//  Concept Model. File: 					patientSummary-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: patientSummary2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "PatientSummary2FHIR"					
* title = "eHN Patient Summary to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Patient Summary to this guide Map"					
* purpose = "It shows how the Patient Summary data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/PatientSummary"					
* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-ps"					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/PatientSummary"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-ps"					
					
* group[=].element[+].code = #PatientSummary.header					
* group[=].element[=].display = "A.1 Report header data elements"					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.header.subject					
* group[=].element[=].display = "A.1.1 - A1.2 Patient/subject"					
* group[=].element[=].target.code = #Composition.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.header.insuranceInfo					
* group[=].element[=].display = "A.1.3 Insurance information"					
* group[=].element[=].target.code = #Composition.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked"					
* group[=].element[+].code = #PatientSummary.header.documentData					
* group[=].element[=].display = "A.1.4 Document data"					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.header.documentData.created					
* group[=].element[=].display = "A.1.4.1 Date created"					
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.header.documentData.lastUpdate					
* group[=].element[=].display = "A.1.4.2 Date of last update"					
* group[=].element[=].target.code = #Composition.event:careProvisioningEvent.period.end					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked"					
* group[=].element[+].code = #PatientSummary.header.documentData.natureOfIPS					
* group[=].element[=].display = "A.1.4.3 Nature of the PS"					
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "the nature of a PS is determined as a comobination of type if author and legal authenticator. Future versions may cosndier to use Provenance data for this scope"					
* group[=].element[+].code = #PatientSummary.header.participant					
* group[=].element[=].display = "A.1.5 Author and Organisation"					
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.header.participant.author					
* group[=].element[=].display = "A.1.5.1 Author organization"					
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "author can be of type Organziation, Pracitctioner or PractictionerRole"					
* group[=].element[+].code = #PatientSummary.header.participant.legalAuth					
* group[=].element[=].display = "A.1.5.2 Legal authenticator"					
* group[=].element[=].target.code = #Composition.attester					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "attester.mode = 'legal'"					
* group[=].element[+].code = #PatientSummary.header.additionalInfo					
* group[=].element[=].display = "A.1.6 Additional information / Knowledge resources"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Covered by other resources"					
* group[=].element[+].code = #PatientSummary.header.additionalInfo.reference					
* group[=].element[=].display = "A.1.6.1 External reference"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Covered by other resources"					
* group[=].element[+].code = #PatientSummary.header.additionalInfo.relatedWith					
* group[=].element[=].display = "A.1.6.2 Related with"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Covered by other resources"					
* group[=].element[+].code = #PatientSummary.body					
* group[=].element[=].display = "A.2 - Patient summary body data elements"					
* group[=].element[=].target.code = #Composition.section					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.body.alerts					
* group[=].element[=].display = "A.2.1 - Alerts"					
* group[=].element[=].target.code = #Composition.section					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.body.alerts.allergy					
* group[=].element[=].display = "A.2.1.1 - Allergy"					
* group[=].element[=].target.code = #Composition.section:sectionAllergies.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.alerts.alert					
* group[=].element[=].display = "A.2.1.2 - Medical alert information (other alerts not included in allergies)"					
* group[=].element[=].target.code = #Composition.section					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD"					
* group[=].element[+].code = #PatientSummary.body.medicalHistory					
* group[=].element[=].display = "A.2.2 - Medical history"					
* group[=].element[=].target.code = #Composition.section					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.body.medicalHistory.vaccination					
* group[=].element[=].display = "A.2.2.1 - Vaccination/ prophylaxis information"					
* group[=].element[=].target.code = #Composition.section:sectionImmunizations					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.medicalHistory.inactiveProblem					
* group[=].element[=].display = "A.2.2.2 - Resolved, closed or inactive problems"					
* group[=].element[=].target.code = #Composition.section:sectionPastIllnessHx					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.medicalHistory.anamnesis					
* group[=].element[=].display = "A.2.2.3 - Medical history"					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.body.medicalHistory.medicalDevices					
* group[=].element[=].display = "A.2.3.2 - Medical devices and implants"					
* group[=].element[=].target.code = #Composition.�section:sectionMedicalDevices					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.medicalHistory.procedures					
* group[=].element[=].display = "A.2.3.3 - Procedures"					
* group[=].element[=].target.code = #Composition.section:sectionProceduresHx					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.medicalHistory.functionalStatus					
* group[=].element[=].display = "A.2.3.4 - Functional status"					
* group[=].element[=].target.code = #Composition.section:sectionFunctionalStatus					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.medicationSummary					
* group[=].element[=].display = "A.2.4 - Medication summary"					
* group[=].element[=].target.code = #Composition.section:sectionMedications					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.socialHistory					
* group[=].element[=].display = "A.2.5 - Social history"					
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.pregnancyHistory					
* group[=].element[=].display = "A.2.6 Pregnancy history"					
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.patientData					
* group[=].element[=].display = "A.2.7 - Patient provided data"					
* group[=].element[=].target.code = #Composition.section					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.body.patientData.travelHistory					
* group[=].element[=].display = "A.2.7.1 - Travel history"					
* group[=].element[=].target.code = #Composition.section:sectionTravelHx					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #PatientSummary.body.patientData.advanceDirective					
* group[=].element[=].display = "A.2.7.2 - Advance Directive"					
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.results					
* group[=].element[=].display = "A.2.8 - Results"					
* group[=].element[=].target.code = #Composition.section:sectionResults					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #PatientSummary.body.planOfCare					
* group[=].element[=].display = "A.2.9 - Plan of Care"					
* group[=].element[=].target.code = #Composition.section:sectionPlanOfCare					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					