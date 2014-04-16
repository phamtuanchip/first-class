package org.quartz.extra;

import java.io.InputStream;
import java.net.URL;

import org.quartz.simpl.CascadingClassLoadHelper;
import org.quartz.spi.ClassLoadHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xeustechnologies.jcl.JarClassLoader;

/**
 * A ClassLoaderHelper that uses JarClassLoader. If this class failed to load
 * a class or resource, it will delegate to the CascadingClassLoadHelper.
 * 
 * <p>
 * Due to Quartz has no way to set this class fields, you may customize the jarPaths by using sys prop.
 * Eg: "-DjarPaths=path1.jar,path2.jar,path3.jar".
 * 
 * <p>
 * When running standalone Java SE, the JCL uses a separated isolated log4j settings that will suppress 
 * Quartz log output by default. You need to set "-Djcl.isolateLogging=false" in sys prop to see Quartz logging properly.
 * 
 * @author Zemian Deng <saltnlight5@gmail.com>
 *
 */
public class JclClassLoadHelper implements ClassLoadHelper {
	
	private static final Logger logger = LoggerFactory.getLogger(JclClassLoadHelper.class);
	protected String jarPaths;
	protected JarClassLoader jcl;
	protected CascadingClassLoadHelper cascadeClassLoadHelper;

	public void setJarPaths(String jarPaths) {
		this.jarPaths = jarPaths;
	}
	
	public JclClassLoadHelper() {
		jarPaths = System.getProperty("jarPaths", " ");
	}
	
	@Override
	public void initialize() {
		// Create and setup JCL
		jcl = new JarClassLoader();
		String[] paths = jarPaths.split(",");
		for (String path : paths) {
			if (!path.trim().equals("")) {
				logger.debug("Adding JarClassLoader from 'user jarPaths': {}", path);
				jcl.add(path);
			}
		}
		
		// Initialize a fall back ClassLoadHelper.
		cascadeClassLoadHelper = new CascadingClassLoadHelper();
		cascadeClassLoadHelper.initialize();
	}

	@Override
	public ClassLoader getClassLoader() {
		logger.debug("getClassLoader: {}", jcl);
		return jcl;
	}

	@Override
	public URL getResource(String name) {
		logger.debug("getResource: {}", name);
		URL ret = jcl.getResource(name);
		if (ret == null) {
			logger.debug("No found. use cascadeClassLoadHelper.");
			ret = cascadeClassLoadHelper.getResource(name);
		}
		return ret;
	}

	@Override
	public InputStream getResourceAsStream(String name) {
		logger.debug("getResourceAsStream: {}", name);
		InputStream ret = jcl.getResourceAsStream(name);
		if (ret == null) {
			logger.debug("No found. use cascadeClassLoadHelpers.");
			ret = cascadeClassLoadHelper.getResourceAsStream(name);
		}
		return ret;
	}

	@Override
	public Class<?> loadClass(String className) throws ClassNotFoundException {
		logger.debug("loadClass: {}", className);
		Class<?> ret = null;
		try {
			ret = jcl.loadClass(className);
		} catch (ClassNotFoundException e) {
			logger.debug("No found. use cascadeClassLoadHelper.");
			ret = cascadeClassLoadHelper.loadClass(className);
		}
		return ret;
	}

}
