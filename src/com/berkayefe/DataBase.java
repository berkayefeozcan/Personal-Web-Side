package com.berkayefe;

import java.sql.*;
import java.util.ArrayList;

//import oracle.jrockit.jfr.tools.ConCatRepository;
//import sun.security.provider.certpath.ResponderId;

public class DataBase {

	private Connection con;
	private Statement statement;
	private ResultSet resulSet;
	private PreparedStatement preparedStatement;

	public DataBase() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			System.out.println("Mysql driver not found ");

		}
		con = null;
		try {
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/blog?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
					"root", "");
			statement = con.createStatement();
		} catch (SQLException e) {
			System.out.println("Mysql didnt connection  ");
		}

	}

	public ArrayList<BlogPost> fetchPostData() {

		ArrayList<BlogPost> postArray = new ArrayList<BlogPost>();
		String query = "Select * from articles ";

		try {
			resulSet = statement.executeQuery(query);

			while (resulSet.next()) {

				String id = resulSet.getString("id");
				String title = resulSet.getString("title");
				String author = resulSet.getString("author");
				String content = resulSet.getString("content");
				String shortContent = content.substring(0, 100);
				String readMin = resulSet.getString("read_min");
				String imgSource = resulSet.getString("image_source");
				String createdDate = resulSet.getString("created_date");
				postArray.add(new BlogPost(id, title, author, content, shortContent, readMin, imgSource, createdDate));
			}

		} catch (SQLException e)

		{
			System.out.println("execute query error from fetchPostData");

		}
		return postArray;
	}

	public ArrayList<BlogPost> fetchPostData(String id) {

		ArrayList<BlogPost> postArray = new ArrayList<BlogPost>();
		String query = "Select * from articles where id = " + id;
		System.out.println(query);

		try {
			resulSet = statement.executeQuery(query);

			while (resulSet.next()) {

				String aid = resulSet.getString("id");
				String title = resulSet.getString("title");
				String author = resulSet.getString("author");
				String content = resulSet.getString("content");
				String shortContent = content.substring(0, content.length() / 3);
				String readMin = resulSet.getString("read_min");
				String imgSource = resulSet.getString("image_source");
				String createdDate = resulSet.getString("created_date");
				postArray.add(new BlogPost(aid, title, author, content, shortContent, readMin, imgSource, createdDate));
			}

		} catch (SQLException e)

		{
			System.out.println("execute query error from fetchPostData");

		}
		return postArray;
	}

	public boolean checkLoginForAdmin(String userName, String password) {
		String sorgu = "SELECT * From admins WHERE user_name ='" + userName + "'and password='" + password + "';";
		try {
			resulSet = statement.executeQuery(sorgu);

			return resulSet.next();

		} catch (SQLException e)

		{
			System.out.println("execute query error from fetchPostData");

		}
		return true;
	}

	public void createNewArticle(String author, String title, String content, String imageSource, String readMinute,
			String createdDate) {
		String query = "Insert Into articles (id,author,title,content,created_date,read_min,image_source) VALUES(NULL,'"
				+ author + "','" + title + "','" + content + "','" + createdDate + "','" + readMinute + "','"
				+ imageSource + "');";
		System.out.println(query);
		try {

			statement.executeUpdate(query);
			statement.close();

		} catch (SQLException e)

		{
			System.out.println("execute query error from createNewArticle");

		}
	}
	public void deleteArticle (String id ) {
		String query = "DELETE FROM  category_article_relation WHERE a_id=" + id +";";
		try {
			statement.executeUpdate(query);
			query = "DELETE FROM  articles WHERE id=" + id +";";
			System.out.println(query);
			statement.executeUpdate(query);
			statement.close();

		} catch (SQLException e)

		{
			System.out.println("execute query error from deleteArticle" + e);

		}
	}

	public void updatePost(String id, String author, String title, String content, String imageSource,
			String readMinute, String createdDate) {
		String query = "UPDATE articles SET author='" + author + "',title =\" " + title + "\",content=\"" + content
				+ "\",image_source='" + imageSource + "',read_min='" + readMinute+"',created_date='"+createdDate+"' where id = "+id +";";
		System.out.println(query);
		try {

			statement.executeUpdate(query);
			statement.close();

		} catch (SQLException e)

		{
			System.out.println("execute query error from updatePost");

		}
	}

	private Date dateNesnesiOlustur(String tarih) {
		String[] tarihler = tarih.split("-");
		// bolu isaretine gore tarihler parcalanaiyor.
		int yil = Integer.parseInt(tarihler[0]) - 1900;// 1900 date classinin
														// ozelligi oyle
														// istiyor.
		int ay = Integer.parseInt(tarihler[1]) - 1;
		int gun = Integer.parseInt(tarihler[2]);
		return new Date(yil, ay, gun);

	}

}
