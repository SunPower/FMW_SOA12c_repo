package testsoaadd;
import com.eviware.soapui.impl.wsdl.testcase.WsdlProjectRunner;
import com.eviware.soapui.impl.wsdl.WsdlInterface;
import com.eviware.soapui.impl.wsdl.WsdlOperation;
import com.eviware.soapui.impl.wsdl.WsdlProject;
import com.eviware.soapui.impl.wsdl.support.wsdl.WsdlImporter;
import com.eviware.soapui.model.iface.Operation;

import java.util.List;

public class TestSOAP {
    public TestSOAP() {
        super();
    }
    
    public void testRunner() throws Exception {
        
        try{
            WsdlProjectPro project = new WsdlProjectPro("SoapUIWorkspace/Sample-soapui-project.xml");
            List testSuites = project.getTestSuiteList();
            for( TestSuite suite : testSuites ) {
                    List testCases = suite.getTestCaseList();
                    for( TestCase testCase : testCases ) {
                            System.out.println("Running SoapUI test [" + testCase.getName() + "]");
                            TestRunner runner2 = testCase.run(new PropertiesMap(), false);
                            assertEquals(Status.FINISHED, runner2.getStatus());
                    }
            }
        }catch(XMLException e){}
    }
}
