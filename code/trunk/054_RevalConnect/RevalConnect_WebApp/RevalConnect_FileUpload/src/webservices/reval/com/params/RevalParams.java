
package webservices.reval.com.params;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="LoginResult" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="Data"&gt;
 *           &lt;complexType&gt;
 *             &lt;complexContent&gt;
 *               &lt;extension base="{http://com.reval.webservices/params}datatype"&gt;
 *                 &lt;attribute name="AsyncId" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
 *                 &lt;attribute name="DataNodeName" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
 *                 &lt;attribute name="DataType" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
 *               &lt;/extension&gt;
 *             &lt;/complexContent&gt;
 *           &lt;/complexType&gt;
 *         &lt;/element&gt;
 *         &lt;element name="Param"&gt;
 *           &lt;complexType&gt;
 *             &lt;complexContent&gt;
 *               &lt;extension base="{http://com.reval.webservices/params}paramtype"&gt;
 *                 &lt;attribute name="ProcessName" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
 *               &lt;/extension&gt;
 *             &lt;/complexContent&gt;
 *           &lt;/complexType&gt;
 *         &lt;/element&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = { "loginResult", "data", "param" })
@XmlRootElement(name = "RevalParams")
public class RevalParams {

    @XmlElement(name = "LoginResult", required = true)
    protected String loginResult;
    @XmlElement(name = "Data", required = true)
    protected RevalParams.Data data;
    @XmlElement(name = "Param", required = true)
    protected RevalParams.Param param;

    /**
     * Gets the value of the loginResult property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getLoginResult() {
        return loginResult;
    }

    /**
     * Sets the value of the loginResult property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setLoginResult(String value) {
        this.loginResult = value;
    }

    /**
     * Gets the value of the data property.
     *
     * @return
     *     possible object is
     *     {@link RevalParams.Data }
     *
     */
    public RevalParams.Data getData() {
        return data;
    }

    /**
     * Sets the value of the data property.
     *
     * @param value
     *     allowed object is
     *     {@link RevalParams.Data }
     *
     */
    public void setData(RevalParams.Data value) {
        this.data = value;
    }

    /**
     * Gets the value of the param property.
     *
     * @return
     *     possible object is
     *     {@link RevalParams.Param }
     *
     */
    public RevalParams.Param getParam() {
        return param;
    }

    /**
     * Sets the value of the param property.
     *
     * @param value
     *     allowed object is
     *     {@link RevalParams.Param }
     *
     */
    public void setParam(RevalParams.Param value) {
        this.param = value;
    }


    /**
     * <p>Java class for anonymous complex type.
     *
     * <p>The following schema fragment specifies the expected content contained within this class.
     *
     * <pre>
     * &lt;complexType&gt;
     *   &lt;complexContent&gt;
     *     &lt;extension base="{http://com.reval.webservices/params}datatype"&gt;
     *       &lt;attribute name="AsyncId" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
     *       &lt;attribute name="DataNodeName" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
     *       &lt;attribute name="DataType" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
     *     &lt;/extension&gt;
     *   &lt;/complexContent&gt;
     * &lt;/complexType&gt;
     * </pre>
     *
     *
     */
    @XmlAccessorType(XmlAccessType.FIELD)
    @XmlType(name = "")
    public static class Data extends Datatype {

        @XmlAttribute(name = "AsyncId")
        protected String asyncId;
        @XmlAttribute(name = "DataNodeName")
        protected String dataNodeName;
        @XmlAttribute(name = "DataType")
        protected String dataType;

        /**
         * Gets the value of the asyncId property.
         *
         * @return
         *     possible object is
         *     {@link String }
         *
         */
        public String getAsyncId() {
            return asyncId;
        }

        /**
         * Sets the value of the asyncId property.
         *
         * @param value
         *     allowed object is
         *     {@link String }
         *
         */
        public void setAsyncId(String value) {
            this.asyncId = value;
        }

        /**
         * Gets the value of the dataNodeName property.
         *
         * @return
         *     possible object is
         *     {@link String }
         *
         */
        public String getDataNodeName() {
            return dataNodeName;
        }

        /**
         * Sets the value of the dataNodeName property.
         *
         * @param value
         *     allowed object is
         *     {@link String }
         *
         */
        public void setDataNodeName(String value) {
            this.dataNodeName = value;
        }

        /**
         * Gets the value of the dataType property.
         *
         * @return
         *     possible object is
         *     {@link String }
         *
         */
        public String getDataType() {
            return dataType;
        }

        /**
         * Sets the value of the dataType property.
         *
         * @param value
         *     allowed object is
         *     {@link String }
         *
         */
        public void setDataType(String value) {
            this.dataType = value;
        }

    }


    /**
     * <p>Java class for anonymous complex type.
     *
     * <p>The following schema fragment specifies the expected content contained within this class.
     *
     * <pre>
     * &lt;complexType&gt;
     *   &lt;complexContent&gt;
     *     &lt;extension base="{http://com.reval.webservices/params}paramtype"&gt;
     *       &lt;attribute name="ProcessName" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
     *     &lt;/extension&gt;
     *   &lt;/complexContent&gt;
     * &lt;/complexType&gt;
     * </pre>
     *
     *
     */
    @XmlAccessorType(XmlAccessType.FIELD)
    @XmlType(name = "")
    public static class Param extends Paramtype {

        @XmlAttribute(name = "ProcessName")
        protected String processName;

        /**
         * Gets the value of the processName property.
         *
         * @return
         *     possible object is
         *     {@link String }
         *
         */
        public String getProcessName() {
            return processName;
        }

        /**
         * Sets the value of the processName property.
         *
         * @param value
         *     allowed object is
         *     {@link String }
         *
         */
        public void setProcessName(String value) {
            this.processName = value;
        }

    }

}
