
package webservices.reval.com.params;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for qjobstatustype complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType name="qjobstatustype"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="QJobSysId" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="QJobStatusCode" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="QJobStatusText" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="QJobErrDescr" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "qjobstatustype", propOrder = { "qJobSysId", "qJobStatusCode", "qJobStatusText", "qJobErrDescr" })
public class Qjobstatustype {

    @XmlElement(name = "QJobSysId", required = true)
    protected String qJobSysId;
    @XmlElement(name = "QJobStatusCode", required = true)
    protected String qJobStatusCode;
    @XmlElement(name = "QJobStatusText", required = true)
    protected String qJobStatusText;
    @XmlElement(name = "QJobErrDescr", required = true)
    protected String qJobErrDescr;

    /**
     * Gets the value of the qJobSysId property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getQJobSysId() {
        return qJobSysId;
    }

    /**
     * Sets the value of the qJobSysId property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setQJobSysId(String value) {
        this.qJobSysId = value;
    }

    /**
     * Gets the value of the qJobStatusCode property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getQJobStatusCode() {
        return qJobStatusCode;
    }

    /**
     * Sets the value of the qJobStatusCode property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setQJobStatusCode(String value) {
        this.qJobStatusCode = value;
    }

    /**
     * Gets the value of the qJobStatusText property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getQJobStatusText() {
        return qJobStatusText;
    }

    /**
     * Sets the value of the qJobStatusText property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setQJobStatusText(String value) {
        this.qJobStatusText = value;
    }

    /**
     * Gets the value of the qJobErrDescr property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getQJobErrDescr() {
        return qJobErrDescr;
    }

    /**
     * Sets the value of the qJobErrDescr property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setQJobErrDescr(String value) {
        this.qJobErrDescr = value;
    }

}
