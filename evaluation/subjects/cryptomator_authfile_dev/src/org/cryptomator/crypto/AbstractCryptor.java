/*******************************************************************************
 * Copyright (c) 2014 Sebastian Stenzel
 * This file is licensed under the terms of the MIT license.
 * See the LICENSE.txt file for more info.
 * 
 * Contributors:
 *     Sebastian Stenzel - initial API and implementation
 ******************************************************************************/
package org.cryptomator.crypto;

import java.util.HashSet;
import java.util.Set;

public abstract class AbstractCryptor implements Cryptor {

	private final Set<SensitiveDataSwipeListener> swipeListeners = new HashSet<>();

	@Override
	public final void swipeSensitiveData() {
		this.swipeSensitiveDataInternal();
		for (final SensitiveDataSwipeListener sensitiveDataSwipeListener : swipeListeners) {
			sensitiveDataSwipeListener.swipeSensitiveData();
		}
	}

	protected abstract void swipeSensitiveDataInternal();

	@Override
	public final void addSensitiveDataSwipeListener(SensitiveDataSwipeListener listener) {
		this.swipeListeners.add(listener);
	}

	@Override
	public final void removeSensitiveDataSwipeListener(SensitiveDataSwipeListener listener) {
		this.swipeListeners.remove(listener);
	}

}
