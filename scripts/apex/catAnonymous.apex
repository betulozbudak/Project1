//NORMAL WORLD

Cat sfCat= new Cat();
//if we do not have any constructor then this works
//or if we have parameterless constructor then this works.


sfCat.name='Leo';
sfCat.color='White';
system.debug('sfcat ==>'+ sfCat);

Cat sfCat2= new Cat('Leo','Orange');
Cat sfCat3= new Cat('Luna','Black');

Cat batch11Cat= new Cat('fluffykins','white');
system.debug('batch11 cat is '+ batch11Cat);

//Cat wrongEx = new Cat (4,8); its not work