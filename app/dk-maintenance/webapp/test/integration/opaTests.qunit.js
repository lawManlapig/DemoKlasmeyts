sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'dkmaintenance/test/integration/FirstJourney',
		'dkmaintenance/test/integration/pages/KlasmeytsList',
		'dkmaintenance/test/integration/pages/KlasmeytsObjectPage',
		'dkmaintenance/test/integration/pages/SkillsObjectPage'
    ],
    function(JourneyRunner, opaJourney, KlasmeytsList, KlasmeytsObjectPage, SkillsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('dkmaintenance') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheKlasmeytsList: KlasmeytsList,
					onTheKlasmeytsObjectPage: KlasmeytsObjectPage,
					onTheSkillsObjectPage: SkillsObjectPage
                }
            },
            opaJourney.run
        );
    }
);