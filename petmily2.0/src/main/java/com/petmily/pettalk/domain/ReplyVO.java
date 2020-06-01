package com.petmily.pettalk.domain;

import java.io.Serializable;

public class ReplyVO implements Serializable {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private int BoardNo;
	private int ReplyNo;
	private String ReplyContent;
	private String WriterNm;
	private String WriterId;
	private String CreateDt;

	public ReplyVO() {}


	public ReplyVO(int boardNo, int replyNo, String replyContent, String writerNm, String writerId, String createDt) {
		super();
		BoardNo = boardNo;
		ReplyNo = replyNo;
		ReplyContent = replyContent;
		WriterNm = writerNm;
		WriterId = writerId;
		CreateDt = createDt;
	}






	@Override
	public String toString() {
		return "ReplyVO [BoardNo=" + BoardNo + ", ReplyNo=" + ReplyNo + ", ReplyContent=" + ReplyContent + ", WriterNm="
				+ WriterNm + ", WriterId=" + WriterId + ", CreateDt=" + CreateDt + "]";
	}


	public int getBoardNo() {
		return BoardNo;
	}
	public void setBoardNo(int boardNo) {
		BoardNo = boardNo;
	}
	public int getReplyNo() {
		return ReplyNo;
	}
	public void setReplyNo(int replyNo) {
		ReplyNo = replyNo;
	}
	public String getReplyContent() {
		return ReplyContent;
	}
	public void setReplyContent(String replyContent) {
		ReplyContent = replyContent;
	}
	public String getWriterNm() {
		return WriterNm;
	}
	public void setWriterNm(String writerNm) {
		WriterNm = writerNm;
	}
	public String getWriterId() {
		return WriterId;
	}
	public void setWriterId(String writerId) {
		WriterId = writerId;
	}
	public String getCreateDt() {
		return CreateDt;
	}
	public void setCreateDt(String createDt) {
		CreateDt = createDt;
	}



}
