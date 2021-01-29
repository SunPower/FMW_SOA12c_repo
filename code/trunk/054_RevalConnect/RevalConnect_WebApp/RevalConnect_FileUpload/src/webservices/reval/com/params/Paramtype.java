
package webservices.reval.com.params;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for paramtype complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType name="paramtype"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="FileName" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="CSVData" type="{http://com.reval.webservices/params}csvdatatype"/&gt;
 *         &lt;element name="uiData" type="{http://com.reval.webservices/params}uidatatype"/&gt;
 *         &lt;element name="QJobSysId" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "paramtype", propOrder = { "fileName", "csvData", "uiData", "qJobSysId" })
@XmlSeeAlso({ webservices.reval.com.params.RevalParams.Param.class })
public class Paramtype {

    @XmlElement(name = "FileName", required = true)
    protected String fileName;
    @XmlElement(name = "CSVData", required = true)
    protected Csvdatatype csvData;
    @XmlElement(required = true)
    protected Uidatatype uiData;
    @XmlElement(name = "QJobSysId", required = true)
    protected String qJobSysId;

    /**
     * Gets the value of the fileName property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * Sets the value of the fileName property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setFileName(String value) {
        this.fileName = value;
    }

    /**
     * Gets the value of the csvData property.
     *
     * @return
     *     possible object is
     *     {@link Csvdatatype }
     *
     */
    public Csvdatatype getCSVData() {
        return csvData;
    }

    /**
     * Sets the value of the csvData property.
     *
     * @param value
     *     allowed object is
     *     {@link Csvdatatype }
     *
     */
    public void setCSVData(Csvdatatype value) {
        this.csvData = value;
    }

    /**
     * Gets the value of the uiData property.
     *
     * @return
     *     possible object is
     *     {@link Uidatatype }
     *
     */
    public Uidatatype getUiData() {
        return uiData;
    }

    /**
     * Sets the value of the uiData property.
     *
     * @param value
     *     allowed object is
     *     {@link Uidatatype }
     *
     */
    public void setUiData(Uidatatype value) {
        this.uiData = value;
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

}
