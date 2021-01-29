package gnupgapi;

public class APIOutput {
    public APIOutput() {
        super();
    }
    Boolean Result;
    String Error_Message;

    

    public void setError_Message(String Error_Message) {
        this.Error_Message = Error_Message;
    }

    public String getError_Message() {
        return Error_Message;
    }

    public void setResult(Boolean Result) {
        this.Result = Result;
    }

    public Boolean getResult() {
        return Result;
    }
}
