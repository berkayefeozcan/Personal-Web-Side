package com.berkayefe;

public class BlogPost {
	
	public String id; 
	public String title; 
	public String author; 
	public String content;
	public String shortContent;
	public String readMin;
	public String imgSource;
	public String createdDate;
	
	public BlogPost(String id , String title,String author,String content,String shortContent,String readMin,String imgSource,String createdDate) {
		this.id = id;
		this.title = title;
		this.author = author;
		this.content = content;
		this.shortContent = shortContent;
		this.readMin = readMin ;
		this.imgSource = imgSource;
		this.createdDate = createdDate;
	}
	
	

}
