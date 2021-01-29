package gnupgapi;

public class APIInput {
    public APIInput() {
        super();
    }
    String Operation;
    String PassPhrase;
    String SourceLoc;
    String DestLoc;

    public void setOperation(String Operation) {
        this.Operation = Operation;
    }

    public String getOperation() {
        return Operation;
    }

    public void setPassPhrase(String PassPhrase) {
        this.PassPhrase = PassPhrase;
    }

    public String getPassPhrase() {
        return PassPhrase;
    }

    public void setSourceLoc(String SourceLoc) {
        this.SourceLoc = SourceLoc;
    }

    public String getSourceLoc() {
        return SourceLoc;
    }

    public void setDestLoc(String DestLoc) {
        this.DestLoc = DestLoc;
    }

    public String getDestLoc() {
        return DestLoc;
    }
}
