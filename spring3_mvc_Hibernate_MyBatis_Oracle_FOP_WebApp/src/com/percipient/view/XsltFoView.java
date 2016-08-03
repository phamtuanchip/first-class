package com.percipient.view;

import java.io.StringReader;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.util.JAXBSource;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;
import org.springframework.web.servlet.view.xslt.XsltView;

import com.percipient.bean.Student;

public class XsltFoView extends XsltView {

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		FopFactory fopFactory = FopFactory.newInstance();
		FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
		ServletOutputStream out = null;

		out = response.getOutputStream();
		response.setContentType(MimeConstants.MIME_PDF);

		try {
			Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent,
					out);

			// Setup XSLT
			TransformerFactory factory = TransformerFactory.newInstance();
			Transformer transformer = factory.newTransformer(super
					.getStylesheetSource()); // get source from Stream

			// Setup input for XSLT transformation from either
			//1. Xml in String form
			//2. Xml from View Bean using JaxB 
			Source src = null;
			if (model.get("xml") != null) {
				StringReader xmlReader = new StringReader(
						(String) model.get("xml"));
				src = new StreamSource(xmlReader);
			} else {
				src = new JAXBSource(JAXBContext.newInstance(Student.class),
						(Student) model.get("bean"));
			}
			// Resulting SAX events (the generated FO) pipe through to FOP
			Result res = new SAXResult(fop.getDefaultHandler());

			// Start XSLT transformation and FOP processing
			transformer.transform(src, res);
		} finally {
			out.close();
		}
	}
}
