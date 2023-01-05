Map<string,Country_Code__c> allCountryCodes = Country_Code__c.getAll();
//system.debug('country codes are '  + allCountryCodes);

for(string eachcountry: allCountryCodes.keyset()){
    system.debug('Country is ' + eachcountry + ' its code is ' + allCountryCodes.get(eachcountry).code__c);
}

