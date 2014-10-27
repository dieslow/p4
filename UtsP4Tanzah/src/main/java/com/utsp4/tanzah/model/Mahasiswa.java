package com.utsp4.tanzah.model;

import java.util.Date;

public class Mahasiswa {
    
    private Integer id;
    private String npm, nama, tempatLahir, jenisKelamin, alamat;
    private Date tglLahir;
    
    public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNpm() {
		return npm;
	}
	public void setNpm(String npm) {
		this.npm = npm;
	}
	public String getNama() {
		return nama;
	}
	public void setNama(String nama) {
		this.nama = nama;
	}
	public String getTempatLahir() {
		return tempatLahir;
	}
	public void setTempatLahir(String tempatLahir) {
		this.tempatLahir = tempatLahir;
	}
	public String getJenisKelamin() {
		return jenisKelamin;
	}
	public void setJenisKelamin(String jenisKelamin) {
		this.jenisKelamin = jenisKelamin;
	}
	public String getAlamat() {
		return alamat;
	}
	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}
	public Date getTglLahir() {
		return tglLahir;
	}
	public void setTglLahir(Date tglLahir) {
		this.tglLahir = tglLahir;
	}
    
    
}
