
package webservices.reval.com.params;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for datatype complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType name="datatype"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="Descr" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="SessionId" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="QJobSysId" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="QJobStatus" type="{http://com.reval.webservices/params}qjobstatustype"/&gt;
 *         &lt;element name="CData" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="Error" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "datatype", propOrder = { "descr", "sessionId", "qJobSysId", "qJobStatus", "cData", "error" })
@XmlSeeAlso({ webservices.reval.com.params.RevalParams.Data.class })
public class Datatype {

    @XmlElement(name = "Descr", required = true)
    protected String descr;
    @XmlElement(name = "SessionId", required = true)
    protected String sessionId;
    @XmlElement(name = "QJobSysId", required = true)
    protected String qJobSysId;
    @XmlElement(name = "QJobStatus", required = true)
    protected Qjobstatustype qJobStatus;
    @XmlElement(name = "CData", required = true)
    protected String cData;
    @XmlElement(name = "Error", required = true)
    protected String error;

    /**
     * Gets the value of the descr property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getDescr() {
        return descr;
    }

    /**
     * Sets the value of the descr property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setDescr(String value) {
        this.descr = value;
    }

    /**
     * Gets the value of the sessionId property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getSessionId() {
        return sessionId;
    }

    /**
     * Sets the value of the sessionId property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setSessionId(String value) {
        this.sessionId = value;
    }

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
     * Gets the value of the qJobStatus property.
     *
     * @return
     *     possible object is
     *     {@link Qjobstatustype }
     *
     */
    public Qjobstatustype getQJobStatus() {
        return qJobStatus;
    }

    /**
     * Sets the value of the qJobStatus property.
     *
     * @param value
     *     allowed object is
     *     {@link Qjobstatustype }
     *
     */
    public void setQJobStatus(Qjobstatustype value) {
        this.qJobStatus = value;
    }

    /**
     * Gets the value of the cData property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getCData() {
        return cData;
    }

    /**
     * Sets the value of the cData property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setCData(String value) {
        this.cData = value;
    }

    /**
     * Gets the value of the error property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getError() {
        return error;
    }

    /**
     * Sets the value of the error property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setError(String value) {
        this.error = value;
    }

}
