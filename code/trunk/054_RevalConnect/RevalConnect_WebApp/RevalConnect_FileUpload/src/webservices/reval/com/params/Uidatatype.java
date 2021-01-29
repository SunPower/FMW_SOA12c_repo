
package webservices.reval.com.params;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for uidatatype complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType name="uidatatype"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="ProcessSubType" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="ITSServiceFunction" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="ITSServiceID" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "uidatatype", propOrder = { "processSubType", "itsServiceFunction", "itsServiceID" })
public class Uidatatype {

    @XmlElement(name = "ProcessSubType", required = true)
    protected String processSubType;
    @XmlElement(name = "ITSServiceFunction", required = true)
    protected String itsServiceFunction;
    @XmlElement(name = "ITSServiceID", required = true)
    protected String itsServiceID;

    /**
     * Gets the value of the processSubType property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getProcessSubType() {
        return processSubType;
    }

    /**
     * Sets the value of the processSubType property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setProcessSubType(String value) {
        this.processSubType = value;
    }

    /**
     * Gets the value of the itsServiceFunction property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getITSServiceFunction() {
        return itsServiceFunction;
    }

    /**
     * Sets the value of the itsServiceFunction property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setITSServiceFunction(String value) {
        this.itsServiceFunction = value;
    }

    /**
     * Gets the value of the itsServiceID property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getITSServiceID() {
        return itsServiceID;
    }

    /**
     * Sets the value of the itsServiceID property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setITSServiceID(String value) {
        this.itsServiceID = value;
    }

}
