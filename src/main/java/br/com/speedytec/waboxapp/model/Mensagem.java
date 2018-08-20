package br.com.speedytec.waboxapp.model;

public abstract class Mensagem {

	private Integer id;
	private Remetente uid;
	private Destinatario to;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Remetente getUid() {
		return uid;
	}
	public void setUid(Remetente uid) {
		this.uid = uid;
	}
	public Destinatario getTo() {
		return to;
	}
	public void setTo(Destinatario to) {
		this.to = to;
	}
	
	
}


