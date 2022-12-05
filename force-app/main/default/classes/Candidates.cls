public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidates = 0;

    public Candidates(){
        countCandidates++;
    }

    public Candidates(string n,string g){
        this();
        this.Name=n;
        this.Gender=g;
    }

    /*public Candidates(string n,string g){
        this();
        Name=n;
        Gender=g;
    }*/

    public void printCandidate(){
        system.debug('Name is '+ Name );
        system.debug('Gender is ' + Gender);
        system.debug('Company name is ' + CompanyName);
    }
    public static void printCandidateInfo(){
        //we can access only static members inside static method.
        system.debug('Company name is '+ CompanyName);
        //we cannot acces non-static members inside static method.
        //system.debug('name is' + Name);-->impossible
    }
}
