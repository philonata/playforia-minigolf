/**
 *
 */
package com.github.jmkgreen.morphia.mapping.lazy.proxy;

import com.github.jmkgreen.morphia.Key;
import java.util.Map;

/**
 * @author Uwe Schaefer, (us@thomas-daily.de)
 */
public interface ProxiedEntityReferenceMap extends ProxiedReference {

    void __put(String key, Key<?> referenceKey);

    Map<String, Key<?>> __getReferenceMap();
}
