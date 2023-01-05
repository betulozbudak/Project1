Map<string,EmailDomain__mdt> allDomains =EmailDomain__mdt.getAll();
//system.debug('all domains' + allDomains);

for(string eachdomain: allDomains.keyset()){
    system.debug('all domains' + allDomains.get(eachdomain).domain__c);
}