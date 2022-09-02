/*******************************************************************************
 * Copyright (c) 2014 Sebastian Stenzel
 * This file is licensed under the terms of the MIT license.
 * See the LICENSE.txt file for more info.
 * 
 * Contributors:
 *     Sebastian Stenzel - initial API and implementation
 ******************************************************************************/
package org.cryptomator.crypto;

public interface SensitiveDataSwipeListener {

	/**
	 * Removes sensitive data from memory. Depending on the data (e.g. for passwords) it might be necessary to overwrite the memory before
	 * freeing the object.
	 */
	void swipeSensitiveData();

}
