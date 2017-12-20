package com.sist.controller;
import java.util.*;

import java.io.*;
public class FileConfig {
  public List<String> componentScan(String pack)
  {
	  List<String> list=new ArrayList<String>();
	  try
	  {	  //승재경로임니다 바꾸야댐
		  String path="C:\\Users\\sistMoon\\git\\TeamGGGL\\TeamGGGL\\src\\";
		  path=path+pack.replace(".", "\\");
		  File dir=new File(path);
		  File[] files=dir.listFiles();
		  // com.sist.model.Class명
		  for(File f:files)
		  {
			  String name=f.getName();
			  String ext=name.substring(name.lastIndexOf(".")+1);
			  if(ext.equals("java"))
			  {
				  System.out.println(ext);
				  String str=pack+"."+name.substring(0,name.lastIndexOf("."));
			      list.add(str);
			  }
		  }
	  }catch(Exception ex)
	  {
		  System.out.println("FileConfig : "+ex.getMessage());
	  }
	  return list;
  }
}





