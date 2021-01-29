
package webservices.reval.com.params;

import javax.xml.bind.annotation.XmlRegistry;


/**
 * This object contains factory methods for each
 * Java content interface and Java element interface
 * generated in the webservices.reval.com.params package.
 * <p>An ObjectFactory allows you to programatically
 * construct new instances of the Java representation
 * for XML content. The Java representation of XML
 * content can consist of schema derived interfaces
 * and classes representing the binding of schema
 * type definitions, element declarations and model
 * groups.  Factory methods for each of these are
 * provided in this class.
 *
 */
@XmlRegistry
public class ObjectFactory {


    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: webservices.reval.com.params
     *
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link RevalParams }
     *
     */
    public RevalParams createRevalParams() {
        return new RevalParams();
    }

    /**
     * Create an instance of {@link RevalParams.Data }
     *
     */
    public RevalParams.Data createRevalParamsData() {
        return new RevalParams.Data();
    }

    /**
     * Create an instance of {@link RevalParams.Param }
     *
     */
    public RevalParams.Param createRevalParamsParam() {
        return new RevalParams.Param();
    }

    /**
     * Create an instance of {@link Datatype }
     *
     */
    public Datatype createDatatype() {
        return new Datatype();
    }

    /**
     * Create an instance of {@link Paramtype }
     *
     */
    public Paramtype createParamtype() {
        return new Paramtype();
    }

    /**
     * Create an instance of {@link Qjobstatustype }
     *
     */
    public Qjobstatustype createQjobstatustype() {
        return new Qjobstatustype();
    }

    /**
     * Create an instance of {@link Csvdatatype }
     *
     */
    public Csvdatatype createCsvdatatype() {
        return new Csvdatatype();
    }

    /**
     * Create an instance of {@link Uidatatype }
     *
     */
    public Uidatatype createUidatatype() {
        return new Uidatatype();
    }

}
