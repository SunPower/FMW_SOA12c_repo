package com.oracle.xmlns._054_revalconnect.revalconnect_fileupload_2reval.revalconnect_fileupload_2reval;

import com.sun.xml.ws.api.addressing.AddressingVersion;
import com.sun.xml.ws.api.message.Header;
import com.sun.xml.ws.api.message.HeaderList;
import com.sun.xml.ws.developer.JAXWSProperties;

import javax.annotation.Resource;

import javax.jws.Oneway;
import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.soap.Addressing;


@WebService(name = "RevalConnect_FileUpload_2RevalCallback", serviceName = "RevalConnect_FileUpload_2RevalCallback",
            targetNamespace =
            "http://xmlns.oracle.com/054_RevalConnect/RevalConnect_FileUpload_2Reval/RevalConnect_FileUpload_2Reval",
            portName = "RevalConnect_FileUpload_2RevalCallback")
@Addressing
@XmlSeeAlso({ ObjectFactory.class, webservices.reval.com.params.ObjectFactory.class })
public class RevalConnect_FileUpload_2RevalCallbackImpl {
    private static final AddressingVersion WS_ADDR_VER = AddressingVersion.W3C;
    @Resource
    private WebServiceContext wsContext;

    @SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
    @WebMethod(action = "processResponse")
    @Oneway
    public void processResponse(ProcessResponse payload) {
        // get the messageId to correlate this reply with the original request
        HeaderList headerList =
            (HeaderList) wsContext.getMessageContext().get(JAXWSProperties.INBOUND_HEADER_LIST_PROPERTY);
        Header realtesToheader = headerList.get(WS_ADDR_VER.relatesToTag, true);
        String relatesToMessageId = realtesToheader.getStringContent();

        // Add your implementation here.
    }
}

