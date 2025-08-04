package org.cryptomator.crypto.aes256;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonPropertyOrder(value = {"scryptSalt", "scryptCostParam", "scryptBlockSize", "keyLength", "primaryMasterKey", "hMacMasterKey"})
public class KeyFile implements Serializable {

	private static final long serialVersionUID = 8578363158959619885L;
	private byte[] scryptSalt;
	private int scryptCostParam;
	private int scryptBlockSize;
	private int keyLength;
	private byte[] primaryMasterKey;
	private byte[] hMacMasterKey;

	public byte[] getScryptSalt() {
		return scryptSalt;
	}

	public void setScryptSalt(byte[] scryptSalt) {
		this.scryptSalt = scryptSalt;
	}

	public int getScryptCostParam() {
		return scryptCostParam;
	}

	public void setScryptCostParam(int scryptCostParam) {
		this.scryptCostParam = scryptCostParam;
	}

	public int getScryptBlockSize() {
		return scryptBlockSize;
	}

	public void setScryptBlockSize(int scryptBlockSize) {
		this.scryptBlockSize = scryptBlockSize;
	}

	public int getKeyLength() {
		return keyLength;
	}

	public void setKeyLength(int keyLength) {
		this.keyLength = keyLength;
	}

	public byte[] getPrimaryMasterKey() {
		return primaryMasterKey;
	}

	public void setPrimaryMasterKey(byte[] primaryMasterKey) {
		this.primaryMasterKey = primaryMasterKey;
	}

	public byte[] getHMacMasterKey() {
		return hMacMasterKey;
	}

	public void setHMacMasterKey(byte[] hMacMasterKey) {
		this.hMacMasterKey = hMacMasterKey;
	}

}