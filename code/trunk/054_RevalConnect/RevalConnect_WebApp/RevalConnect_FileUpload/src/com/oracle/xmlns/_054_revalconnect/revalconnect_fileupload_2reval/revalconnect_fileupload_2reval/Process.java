
package com.oracle.xmlns._054_revalconnect.revalconnect_fileupload_2reval.revalconnect_fileupload_2reval;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
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
 *         &lt;element name="FileName" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="UploadType" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = { "fileName", "uploadType" })
@XmlRootElement(name = "process")
public class Process {

    @XmlElement(name = "FileName", required = true)
    protected String fileName;
    @XmlElement(name = "UploadType", required = true)
    protected String uploadType;

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
     * Gets the value of the uploadType property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getUploadType() {
        return uploadType;
    }

    /**
     * Sets the value of the uploadType property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setUploadType(String value) {
        this.uploadType = value;
    }

}
