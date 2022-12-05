public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
        date birthDate =date.newInstance(1978,12,04);
        date todayDate = date.today();

        integer ageInMonths = birthDate.monthsBetween(todayDate);
  
        system.debug('My age is '+ ageInMonths);
    }

    public void calculateAgeIndays(){

    date bDate = date.newInstance(1978,12,04);
    date tDate = date.today();

    integer ageInDays = bdate.daysBetween(tDate);
    system.debug('My age is '+ ageInDays);

    }

    public void printSubscriptionEndDate(){

    date subscriptionStartDate = date.today();

    date subscriptionEndDate = subscriptionStartDate.addDays(1000);

    system.debug('subscription end date = ' + subscriptionEndDate);

    integer endDateYear = subscriptionEndDate.year();
    system.debug('subscription end date YEAR is ' + endDateYear);

    integer endDateMonth = subscriptionEndDate.month();
    system.debug('subscription end date MONTH is ' + endDateMonth);

    }

    public void printOfferEndDateTime(){

    datetime dtNow = datetime.now();

    datetime dtOfferEnd = dtNow.addHours(51);
    
    system.debug ('offer end date time is '+ dtOfferEnd);
  
    date offerEndDate = dtOfferEnd.date();

    system.debug('Offer End Time is ' + offerEndDate);

    }

    public void birthDateToMilliSeconds(){
        datetime dt= datetime.newInstance(1978,12,04,2,2,2);

    Long gettime =dt.gettime();

    system.debug('Time is' + gettime);

    }
}

