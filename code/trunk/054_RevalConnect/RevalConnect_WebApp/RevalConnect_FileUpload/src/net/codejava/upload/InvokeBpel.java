package net.codejava.upload;

import com.oracle.xmlns._054_revalconnect.revalconnect_fileupload_2reval.revalconnect_fileupload_2reval.RevalConnectFileUpload2Reval;
import com.oracle.xmlns._054_revalconnect.revalconnect_fileupload_2reval.revalconnect_fileupload_2reval.RevalconnectFileupload2RevalClientEp;

public class InvokeBpel {
    public InvokeBpel() {
        super();
    }
    
    public void invokeBPEL (String fileName, String uploadType){
        RevalconnectFileupload2RevalClientEp revalconnectFileupload2RevalClientEp =
            new RevalconnectFileupload2RevalClientEp();
        RevalConnectFileUpload2Reval revalConnectFileUpload2Reval =
            revalconnectFileupload2RevalClientEp.getRevalConnectFileUpload2RevalPt();
       
        try {
            
            revalConnectFileUpload2Reval.process(fileName, uploadType);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static void main(String[] args) {
        InvokeBpel invokeBpel = new InvokeBpel();
        invokeBpel.invokeBPEL("BALANCES_PDR_041117", "BankBalance");
    }
}
