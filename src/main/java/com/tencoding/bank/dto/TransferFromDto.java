package com.tencoding.bank.dto;

import lombok.Data;

@Data
public class TransferFromDto {
	
	private long amount;
	private String wAccountNumber;
	private String dAccountNumber;
	private String wAccountPassword;
	
	// TODO - 추후 추가 예정
}
