with ressult as (SELECT DISTINCT 
                         MAX(EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strObjektsNamn) AS strObjektsNamn, MAX(EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recTillsynsobjektID) AS recTillsynsobjektID, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strOrt, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strPostnummer AS TillsynFas_VisionPostnr, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strSoekbegrepp, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAdress, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAnteckning, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.bolTimdebitering, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recEnhetID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recAvdelningID, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBoendetyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVatten, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.bolIndraget, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAnlaeggningstyp, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strStatus, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intByggnadsaar, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBeslutsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBesiktningsdatum, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strNotering, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningReningstyp, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intEfterfoeljandereningYta, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningRecipient, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBedoemning, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strInventering, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datInventeringsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVattenskyddsomraade, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterpoleringTyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strPrioritet, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intLoepnr, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intUnderhaallsintervallMaanad, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datNaastaService, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datFoeregaandeService, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAvrinningsomraade, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recVerksamhetID
FROM            EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt INNER JOIN
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning ON 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.recTillsynsobjektID = EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recTillsynsobjektID
WHERE        (EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strObjektsNamn IS NOT NULL)
GROUP BY EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recVerksamhetID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strOrt, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strPostnummer, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strSoekbegrepp, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAdress, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAnteckning, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.bolTimdebitering, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recEnhetID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recAvdelningID, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBoendetyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVatten, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.bolIndraget, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAnlaeggningstyp, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strStatus, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intByggnadsaar, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBeslutsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBesiktningsdatum, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strNotering, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningReningstyp, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intEfterfoeljandereningYta, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningRecipient, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBedoemning, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strInventering, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datInventeringsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVattenskyddsomraade, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterpoleringTyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strPrioritet, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intLoepnr, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intUnderhaallsintervallMaanad, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datNaastaService, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datFoeregaandeService, 
                         EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAvrinningsomraade)


						 SELECT CASE WHEN count(distinct recTillsynsobjektID)= count(recTillsynsobjektID) 
THEN 'column values are unique' ELSE 'column values are NOT unique' END
FROM ressult; 