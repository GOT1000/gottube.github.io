package com.gottube.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.tomcat.util.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gottube.dao.GOTDao;
import com.gottube.handler.PagingHandler;
import com.gottube.vo.AlbumVo;
import com.gottube.vo.ArtistVo;
import com.gottube.vo.BoardVo;
import com.gottube.vo.CommentsVo;
import com.gottube.vo.MemberVo;
import com.gottube.vo.SongVo;
import com.gottube.vo.TrackVo;

@Controller
public class GOTController{
	
	private Logger log = Logger.getLogger(this.getClass());
	private int pageSize = 10;
	private int blockCount = 5;
	
	@Autowired
	private GOTDao dao;
	
	public void setDao(GOTDao dao){
		this.dao = dao;
	}
	@RequestMapping("/front.do")
	public ModelAndView front(@RequestParam(value="page",defaultValue="body.jsp") String page,HttpSession session){
		ModelAndView view = new ModelAndView();

		view.addObject("page",page);
		view.setViewName("template");
		
		return view;
	}
	
	@RequestMapping(value="/listArtist.do",method=RequestMethod.GET)
	public ModelAndView artistList(){
		ModelAndView view = new ModelAndView();
		
		view.addObject("page","artist/listArtist.jsp");
		view.addObject("list",dao.listArtist());
		view.setViewName("template");
		
		return view;
	}

	
	@RequestMapping(value="/listAlbumArtist.do",method=RequestMethod.POST)
	public @ResponseBody String albumArtistList(@RequestParam("a_no") int a_no){
		String artists = "";

		List<HashMap<Object, Object>> list = dao.listAlbumArtist(a_no);
		
		ArtistVo vo = null;

		if(list.size() == 1){

			
			vo = dao.detailArtist(Integer.parseInt(list.get(0).get("ar_no")+""));
			artists = " <a href='detailArtist.do?ar_no="+list.get(0).get("ar_no")+"'>"+vo.getAr_name()+"</a>";
		}else{
			for(int i=0;i<list.size();i++){
				
				vo = dao.detailArtist(Integer.parseInt(list.get(i).get("ar_no")+""));
				
				if(i != list.size()-1){
					artists += " <a href='detailArtist.do?ar_no="+list.get(i).get("ar_no")+"'>"
							+ vo.getAr_name()+"</a>,";
				}else{
					artists = artists.substring(0, artists.length()-1);
					artists += " & <a href='detailArtist.do?ar_no="+list.get(i).get("ar_no")+"'>"+vo.getAr_name()+"</a>";
				}
				
			}
		}

		return artists;
	}
	
	@RequestMapping(value="/listAlbumTrack.do",method=RequestMethod.POST)
	public @ResponseBody String albumTrackList(@RequestParam("a_no") int a_no){
		System.out.println(a_no);
		List<HashMap<Object, Object>> list = dao.listAlbumTrack(a_no);
		
		System.out.println(list.size());
		ObjectMapper mapper = new ObjectMapper();
		
		String res = "";
		try {
			res = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			System.out.println("json error : "+e);
		}
		
		return res;
	}
	
	@RequestMapping(value="/listSong.do",method=RequestMethod.GET)
	public ModelAndView songList(){
		ModelAndView view = new ModelAndView();
		
		view.addObject("page","song/listSong.jsp");
		view.setViewName("template");
		
		return view;
	}
	@RequestMapping(value="/listAlbum.do",method=RequestMethod.GET)
	public ModelAndView albumList(@RequestParam(value="keyField",defaultValue="") String keyField,
			@RequestParam(value="keyWord",defaultValue="") String keyWord,
			@RequestParam(value="pageNum",defaultValue="1") int currentPage){
		ModelAndView view = new ModelAndView();
		
		String pagingHtml = "";

		if(log.isDebugEnabled()){
			log.debug("currentPage:"+currentPage);
			log.debug("keyField:"+keyField);
			log.debug("keyWord:"+keyWord);
		}
		System.out.println(keyField+","+keyWord+","+currentPage);
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		int count = dao.countAlbum(map);
		
		pageSize = 9;
		
		PagingHandler page = new PagingHandler(keyField, keyWord, currentPage, count, pageSize, blockCount, "listAlbum.do");
		
		pagingHtml = page.getPagingHtml().toString();
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<BoardVo> breaking = dao.listBreaking();
		view.addObject("breaking",breaking);
		view.addObject("page","album/listAlbum.jsp");

		view.setViewName("template");
		view.addObject("pagingHtml",pagingHtml);
		view.addObject("currentPage",currentPage);
		view.addObject("keyField",keyField);
		view.addObject("keyWord",keyWord);
		
		return view;
	}
	
	@RequestMapping(value="/listAlbumAjax.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String listAlbumAjax(HttpServletRequest request){
		String content = "";
		
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		String imsi_page = request.getParameter("currentPage");
		
		int currentPage = 0;
		
		if(imsi_page.substring(imsi_page.length()-1,imsi_page.length()).equals("#")){
			currentPage = Integer.parseInt(imsi_page.substring(0,imsi_page.length()-1));
		}else{
			currentPage = Integer.parseInt(imsi_page);
		}
		//int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		System.out.println(keyField+","+keyWord+","+currentPage);
		
		ObjectMapper mapper = new ObjectMapper();
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		int count = dao.countAlbum(map);
		
		pageSize = 9;
		
		PagingHandler page = new PagingHandler(keyField, keyWord, currentPage, count, pageSize, blockCount, "listAlbum.do");
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<HashMap<Object,Object>> list = null;
		if(count>0){
			list = dao.listAlbum(map);
		}else{
			list = Collections.emptyList();
		}

		try {
			content = mapper.writeValueAsString(list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	
	@RequestMapping(value="/listNews.do",method=RequestMethod.GET)
	public ModelAndView newsList(@RequestParam(value="keyField",defaultValue="") String keyField,
								@RequestParam(value="keyWord",defaultValue="") String keyWord,
								@RequestParam(value="pageNum",defaultValue="1") int currentPage){
		
		String pagingHtml = "";

		if(log.isDebugEnabled()){
			log.debug("currentPage:"+currentPage);
			log.debug("keyField:"+keyField);
			log.debug("keyWord:"+keyWord);
		}
		System.out.println(keyField+","+keyWord+","+currentPage);
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		int count = dao.countNews(map);
		
		PagingHandler page = new PagingHandler(keyField, keyWord, currentPage, count, pageSize, blockCount, "listNews.do");
		
		pagingHtml = page.getPagingHtml().toString();
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
//		List<BoardVo> list = null;
//		if(count>0){
//			list = dao.listNews(map);
//		}else{
//			list = Collections.emptyList();
//		}
		
		List<BoardVo> breaking = dao.listBreaking();

//		int number = count - (currentPage-1)*pageSize;
		
		ModelAndView view = new ModelAndView();
		
		view.addObject("page","news/listNews.jsp");
//		view.addObject("count",count);
//		view.addObject("list",list);
		view.addObject("breaking",breaking);
		view.addObject("pagingHtml",pagingHtml);
//		view.addObject("number",number);
		view.setViewName("template");
		view.addObject("currentPage",currentPage);
		view.addObject("keyField",keyField);
		view.addObject("keyWord",keyWord);

		return view;
	}
	
	@RequestMapping(value="/listNewsAjax.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String listNewsAjax(HttpServletRequest request){
		String content = "";
		
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		String imsi_page = request.getParameter("currentPage");
		
		int currentPage = 0;
		
		if(imsi_page.substring(imsi_page.length()-1,imsi_page.length()).equals("#")){
			currentPage = Integer.parseInt(imsi_page.substring(0,imsi_page.length()-1));
		}else{
			currentPage = Integer.parseInt(imsi_page);
		}
		//int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		System.out.println(keyField+","+keyWord+","+currentPage);
		
		ObjectMapper mapper = new ObjectMapper();
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		int count = dao.countNews(map);
		
		PagingHandler page = new PagingHandler(keyField, keyWord, currentPage, count, pageSize, blockCount, "listNews.do");
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<BoardVo> list = null;
		if(count>0){
			list = dao.listNews(map);
		}else{
			list = Collections.emptyList();
		}

		try {
			content = mapper.writeValueAsString(list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	
	@RequestMapping(value="/listRelatedPosts.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String listRelatedPosts(HttpServletRequest request){
		String content = "";
		
		int ar_no = Integer.parseInt(request.getParameter("ar_no"));
		
		ObjectMapper mapper = new ObjectMapper();

		List<BoardVo> list = dao.listRelatedPosts(ar_no);
		
		try {
			content = mapper.writeValueAsString(list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	
	@RequestMapping(value="/detailArtist.do",method=RequestMethod.GET)
	public ModelAndView artistDetail(int ar_no){
		ModelAndView view = new ModelAndView();
		
		view.addObject("page","artist/detailArtist.jsp");
		view.addObject("vo",dao.detailArtist(ar_no));
		view.addObject("song_list",dao.listArtistHotSong(ar_no));
		view.setViewName("template");
		
		return view;
	}
	@RequestMapping(value="/topSong.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String topSong(HttpServletRequest request,HttpServletResponse response){
		String content = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		int start = Integer.parseInt(request.getParameter("start"));
		int end = Integer.parseInt(request.getParameter("end"));
		String chk_date = request.getParameter("chk_date");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();

		String startDate = "";
		String endDate= "";
		if(chk_date.equals("this-week")){
			cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);

			startDate = format.format(cal.getTime());
			
			cal.add(Calendar.DATE, 7);
			
			cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
			
			endDate = format.format(cal.getTime());
			map.put("startDate", startDate);
			map.put("endDate", endDate);
		}else if(chk_date.equals("this-month")){
			cal.set(Calendar.DATE,1);
			startDate = format.format(cal.getTime());
			
			cal.add(Calendar.MONTH, 1);
			endDate = format.format(cal.getTime());
			
			map.put("startDate", startDate);
			map.put("endDate", endDate);
		}
		
		System.out.println("startDate : "+startDate);
		System.out.println("endDate : "+endDate);
		map.put("start", start);
		map.put("end", end);
		map.put("dateField", chk_date);
		
		List<TrackVo> list = dao.listMusic(map);
		
		try {
			content = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	@RequestMapping(value="/topArtist.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String topArtist(HttpServletRequest request,HttpServletResponse response){
		String content = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		int start = Integer.parseInt(request.getParameter("start"));
		int end = Integer.parseInt(request.getParameter("end"));
		String chk_date = request.getParameter("chk_date");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();

		String startDate = "";
		String endDate= "";
		if(chk_date.equals("this-week")){
			cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);

			startDate = format.format(cal.getTime());
			
			cal.add(Calendar.DATE, 7);
			
			cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
			
			endDate = format.format(cal.getTime());
			map.put("startDate", startDate);
			map.put("endDate", endDate);
		}else if(chk_date.equals("this-month")){
			cal.set(Calendar.DATE,1);
			startDate = format.format(cal.getTime());
			
			cal.add(Calendar.MONTH, 1);
			endDate = format.format(cal.getTime());
			
			map.put("startDate", startDate);
			map.put("endDate", endDate);
		}
		
		System.out.println("startDate : "+startDate);
		System.out.println("endDate : "+endDate);
		map.put("start", start);
		map.put("end", end);
		map.put("dateField", chk_date);
		
		List<ArtistVo> list = dao.listTopArtist(map);
		
		try {
			content = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	@RequestMapping(value="/listArtistHotSong.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String listArtistHotSong(@RequestParam("ar_no") int ar_no){
		String content = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		List<TrackVo> list = dao.listArtistHotSong(ar_no);
		
		try {
			content = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	
	@RequestMapping(value="/MainHotSong.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String MainHotSong(){
		String content = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		List<TrackVo> list = dao.MainHotSong();
		
		try {
			content = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	
	@RequestMapping(value="/listArtistRecentAlbum.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String listArtistRecentAlbum(@RequestParam("ar_no") int ar_no){
		String content = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		List<HashMap<Object,Object>> list = dao.listArtistRecentAlbum(ar_no);
		
		for(int i=0;i<list.size();i++){
			String r_date = list.get(i).get("release_date")+"";
			list.get(i).put("release_date",list.get(i).get("release_date").toString().substring(r_date.length()-4, r_date.length()));
		}
		
		try {
			content = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	
	@RequestMapping(value="/MainRecentAlbum.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String MainRecentAlbum(){
		String content = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		List<HashMap<Object,Object>> list = dao.MainRecentAlbum();
		
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).get("release_date").toString());
			String r_date[] = list.get(i).get("release_date").toString().split(" ");
			
			String res = "";
			
			String year = r_date[5];
			String month = r_date[1];
			String date = r_date[2];
			
			if(month.equals("Jan")){
				month = "01";
			}else if(month.equals("Feb")){
				month = "02";
			}else if(month.equals("Mar")){
				month = "03";
			}else if(month.equals("Apr")){
				month = "04";
			}else if(month.equals("May")){
				month = "05";
			}else if(month.equals("Jun")){
				month = "06";
			}else if(month.equals("Jul")){
				month = "07";
			}else if(month.equals("Aug")){
				month = "08";
			}else if(month.equals("Sep")){
				month = "09";
			}else if(month.equals("Oct")){
				month = "10";
			}else if(month.equals("Nov")){
				month = "11";
			}else if(month.equals("Dec")){
				month = "12";
			}
			
			res = year+"-"+month+"-"+date;
			
			list.get(i).put("release_date", res);
		}
		
		try {
			content = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
//	@RequestMapping(value="/listAlbumAjax.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
//	public @ResponseBody String listAlbumAjax(HttpServletRequest request){
//		String content = "";
//		
//		ObjectMapper mapper = new ObjectMapper();
//		
//		int page_no = Integer.parseInt(request.getParameter("page_no"));
//		int page_size = 9;
//		
//		int start = ((page_no-1)*page_size)+1;
//		int end = start + page_size - 1;
//		
//		HashMap<Object,Object> map = new HashMap<Object,Object>();
//		map.put("start", start);
//		map.put("end", end);
//		
//		List<HashMap<Object,Object>> list = dao.listAlbum(map);
//
//		try {
//			content = mapper.writeValueAsString(list);
//		} catch (JsonProcessingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return content;
//	}

	@RequestMapping(value="search.do",produces="text/plain; charset=utf-8",method=RequestMethod.GET)
	public ModelAndView search(@RequestParam(value="q",defaultValue="") String q,
							@RequestParam(value="f",defaultValue="") String keyField){
		ModelAndView view = new ModelAndView();
		
		view.addObject("page","song/search.jsp");
		view.setViewName("template");
		
		return view;
	}
	
	@RequestMapping(value="/countSongAjax.do",produces="text/plain; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String countSong(HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		String q = request.getParameter("q");
		String keyField = request.getParameter("keyField");
	
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("keyWord", q);
		map.put("keyField", keyField);
		
		int re  = dao.countSearchMusic(map);
		
		try{
			res = mapper.writeValueAsString(re);
		}catch(Exception e){
			System.out.println(e);
		}
		
		return res;
	}
	@RequestMapping(value="/searchSongAjax.do",produces="text/plain; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String searchSong(HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		String q = request.getParameter("q");
		String keyField = request.getParameter("keyField");
		int start = Integer.parseInt(request.getParameter("start"));
		int end = Integer.parseInt(request.getParameter("end"));
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("keyWord", q);
		map.put("keyField", keyField);
		map.put("start", start);
		map.put("end", end);
		
		List<TrackVo> song_list = dao.listMusic(map);

		try{
			res = mapper.writeValueAsString(song_list);
		}catch(Exception e){
			System.out.println(e);
		}
		
		return res;
	}
	@RequestMapping(value="/countArtistAjax.do",produces="text/plain; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String countArtist(HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		String q = request.getParameter("q");
		
		int re  = dao.countSearchArtist(q);
		
		try{
			res = mapper.writeValueAsString(re);
		}catch(Exception e){
			System.out.println(e);
		}
		
		return res;
	}
	@RequestMapping(value="/searchArtistAjax.do",produces="text/plain; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String searchArtist(HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		String q = request.getParameter("q");
		int start = Integer.parseInt(request.getParameter("start"));
		int end = Integer.parseInt(request.getParameter("end"));
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("keyWord", q);
		map.put("start",start);
		map.put("end", end);
		
		List<ArtistVo> ar_list = dao.searchArtist(map);
		
		try{
			res = mapper.writeValueAsString(ar_list);
		}catch(Exception e){
			System.out.println(e);
		}
		
		return res;
	}
	@RequestMapping(value="/countAlbum.do",produces="text/plain; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String countAlbumAjax(HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		String q = request.getParameter("q");
		String keyField = request.getParameter("keyField");
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("keyWord", q);
		map.put("keyField", keyField);
		
		int re  = dao.countAlbum(map);
		
		try{
			res = mapper.writeValueAsString(re);
		}catch(Exception e){
			System.out.println(e);
		}
		
		return res;
	}
	@RequestMapping(value="/searchAlbumAjax.do",produces="text/plain; charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String searchAlbum(HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		String q = request.getParameter("q");
		String keyField = request.getParameter("keyField");
		int start = Integer.parseInt(request.getParameter("start"));
		int end = Integer.parseInt(request.getParameter("end"));
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("keyWord", q);
		map.put("keyField", keyField);
		map.put("start",start);
		map.put("end", end);
		
		List<HashMap<Object,Object>> a_list = dao.listAlbum(map);
		
		try{
			res = mapper.writeValueAsString(a_list);
		}catch(Exception e){
			System.out.println(e);
		}
		
		return res;
	}
	@RequestMapping(value="/listBreaking.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String listBreaking(){
		String content = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		List<BoardVo> list = dao.listBreaking();
		
		try {
			content = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	
	@RequestMapping(value="/listComments.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String listComments(HttpServletRequest request){
		String content = "";
		
		ObjectMapper mapper = new ObjectMapper();
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		String keyField = request.getParameter("keyField");
		System.out.println();
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("b_no", b_no);
	//	map.put("keyField", keyField);
		
		List<CommentsVo> list = dao.listComments(map);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getUpload_time());
		}
		try {
			content = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	
	@RequestMapping(value="/detailContent.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailContent(@RequestParam("ar_no") int ar_no){
		String content = "";
		
		ArtistVo vo = dao.detailArtist(ar_no);
		
		content = vo.getContent();
		
		return content;
	}
	
	@RequestMapping(value="/detailAlbum.do",method=RequestMethod.GET)
	public ModelAndView albumDetail(int a_no){
		ModelAndView view = new ModelAndView();
		
		view.addObject("page","album/detailAlbum.jsp");
		view.addObject("vo",dao.detailAlbum(a_no));
		view.addObject("ar_vo",dao.listArtist());
		view.setViewName("template");
		AlbumVo vo = dao.detailAlbum(a_no);
		String r_date = "";
		
		int year = vo.getRelease_date().getYear()+1900;
		int month = vo.getRelease_date().getMonth()+1;
		int date = vo.getRelease_date().getDate();
		
		r_date += year+"-";
		if(month < 10){
			r_date += "0"+month+"-";
		}else{
			r_date += month+"-";
		}
		r_date += date;

		view.addObject("r_date",r_date);
		return view;
	}
	
	@RequestMapping(value="/detailAlbumContent.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailAlbumContent(@RequestParam("a_no") int a_no){
		String content = "";
		
		AlbumVo vo = dao.detailAlbum(a_no);
		
		content = vo.getContent();
		
		return content;
	}
	
	@RequestMapping(value="/detailSong.do",method=RequestMethod.GET)
	public ModelAndView songDetail(int s_no,boolean hitAdd){
		ModelAndView view = new ModelAndView();
		
		if(hitAdd){
			dao.updateHit("song", s_no);
		}
		
		view.addObject("page","song/detailSong.jsp");
		view.addObject("s_vo",dao.detailSong(s_no));
		view.addObject("ar_vo",dao.listSongArtist(s_no));
		view.addObject("pro_vo",dao.listSongProducer(s_no));
		view.addObject("feat_vo",dao.listSongFeat(s_no));
		view.addObject("album_vo",dao.detailSong(s_no).getA_no());
		
		
		AlbumVo vo = dao.detailAlbum(dao.detailSong(s_no).getA_no());
		String r_date = "";
		
		int year = vo.getRelease_date().getYear()+1900;
		
		r_date = year+"";
		
		view.addObject("r_date",r_date);
		
		view.setViewName("template");
		
		return view;
	}
	
	@RequestMapping(value="/detailSongArray.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailSongProducer(@RequestParam("s_no") int s_no){
		String content = "";
		
		List<HashMap<Object,Object>> pro_map = dao.listSongProducer(s_no);
		List<HashMap<Object,Object>> feat_map = dao.listSongFeat(s_no);
		
		System.out.println(pro_map);
		if(pro_map.size() != 0){
			for(int i=0;i<pro_map.size();i++){
				if(i != pro_map.size()-1){
					content += "<a href='detailArtist.do?ar_no="+pro_map.get(i).get("ar_no")+"'>"+pro_map.get(i).get("ar_name")+"</a>, ";
				}else{
					content += "<a href='detailArtist.do?ar_no="+pro_map.get(i).get("ar_no")+"'>"+pro_map.get(i).get("ar_name")+"</a>";
				}
			}
			content += ":";
		}else{
			content += "*:";
		}
		
		
		if(feat_map.size() != 0){
			for(int i=0;i<feat_map.size();i++){
				if(i != feat_map.size()-1){
					content += "<a href='detailArtist.do?ar_no="+feat_map.get(i).get("ar_no")+"'>"+feat_map.get(i).get("ar_name")+"</a>, ";
				}else{
					content += "<a href='detailArtist.do?ar_no="+feat_map.get(i).get("ar_no")+"'>"+feat_map.get(i).get("ar_name")+"</a>";
				}
			}
		}else{
			content += "*";
		}
		
		return content;
	}
	
	@RequestMapping(value="/detailNews.do",method=RequestMethod.GET)
	public ModelAndView newsDetail(int b_no,boolean hitAdd,HttpSession session,HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView();
		
		String id = session.getAttribute("m_id")+"";
		String num = b_no+"";
		String table = "board";
		String cookieName = table;
		String cookieValue = num+":";
		
		if(hitAdd){
			dao.updateHit("board", b_no);
		}
		
		view.addObject("page","news/detailNews.jsp");
		view.addObject("breaking",dao.listBreaking());
		view.addObject("vo",dao.detailNews(b_no));
		view.addObject("name",dao.getName(b_no));
		
		view.setViewName("template");
		
		return view;
	}
	
	@RequestMapping(value="/detailCommentsHistory.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailCommentsHistory(HttpServletRequest request){
		String result = "";
		
		ObjectMapper mapper = new ObjectMapper();
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		
		List<HashMap<Object,Object>> map = dao.detailCommentsHistory(m_no);
		
		try {
			result = mapper.writeValueAsString(map);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	@RequestMapping(value="/insertArtist.do",method=RequestMethod.GET)
	public ModelAndView artistForm(){
		ModelAndView view = new ModelAndView();
		
		view.addObject("page","artist/insertArtist.jsp");
		view.setViewName("template");
		
		return view;
	}
	
	@RequestMapping(value="/insertArtist.do",method=RequestMethod.POST)
	public ModelAndView artistSubmit(HttpServletRequest request,HttpSession session){
		ModelAndView view = new ModelAndView();
		
		ArtistVo a = new ArtistVo();
		
		String[] ar_types = request.getParameterValues("ar_type");
		String ar_type = "";
		
		for(int i=0;i<ar_types.length;i++){
			if(i != ar_types.length-1){
				ar_type += ar_types[i]+",";
			}else{
				ar_type += ar_types[i];
			}
		}
		
		int ar_no = dao.getArtistNextNo();
		String ar_name = request.getParameter("ar_name");
		String content = request.getParameter("content");
		String profile = request.getParameter("profile");
		String bg = request.getParameter("bg");
		
		a.setAr_no(ar_no);
		a.setAr_type(ar_type);
		a.setAr_name(ar_name);
		a.setProfile(profile);
		a.setContent(content);
		a.setBg(bg);
		
		int re = dao.insertArtist(a);
		
		if(re == 1){
			session.setAttribute("msg", "아티스트가 등록되었습니다!");
		}else{
			session.setAttribute("msg", "아티스트 등록에 실패했습니다.");
		}
		
		view.setViewName("redirect:/front.do");
		
		return view;
	}
	
	@RequestMapping(value="/insertAlbum.do",method=RequestMethod.GET)
	public ModelAndView albumForm(){
		ModelAndView view = new ModelAndView();
		
		view.addObject("page","album/insertAlbum.jsp");
		view.addObject("ar_vo",dao.listArtist());
		view.setViewName("template");
		
		return view;
	}
	
	@RequestMapping(value="/insertAlbum.do",method=RequestMethod.POST)
	public ModelAndView albumSubmit(HttpServletRequest request,HttpSession session){
		ModelAndView view = new ModelAndView();
		
		AlbumVo a = new AlbumVo();

		String ar_type = "";
		
		int a_no = dao.getAlbumNextNo();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String a_img = request.getParameter("a_img");
		String r_date = request.getParameter("release_date");

		String[] artists = request.getParameterValues("ar_no");
		

		Date release_date = null;
		try {
			release_date = new SimpleDateFormat("yyyy-MM-dd").parse(r_date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		a.setA_no(a_no);
		a.setTitle(title);
		a.setContent(content);
		a.setA_img(a_img);
		a.setRelease_date(release_date);
		
		int re = dao.insertAlbum(a);
		
		
		
		if(re == 1){
			HashMap<Object, Object> map = new HashMap<Object, Object>();
			
			for(int i=0;i<artists.length;i++){
				map.put("a_no", a_no);
				map.put("ar_no", artists[i]);
				map.put("input_idx", i+1);
				
				dao.insertAlbumArtist(map);
			}
			
			
			session.setAttribute("msg","앨범이 등록되었습니다");
		}else{
			session.setAttribute("msg", "앨범 등록에 실패했습니다.");
		}
		
		view.setViewName("redirect:/front.do");
		
		return view;
	}
	
	@RequestMapping(value="/insertSong.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String insertSong(HttpServletResponse response, HttpServletRequest request,
			MultipartHttpServletRequest multi){
		String content = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		String s_title = multi.getParameter("title");
		String lyrics = multi.getParameter("lyrics");
		String r_date = multi.getParameter("release_date");
		int a_no = Integer.parseInt(multi.getParameter("a_no"));
		String etc = multi.getParameter("etc");
		String ar_arrays = multi.getParameter("ar_array");
		String pro_arrays = multi.getParameter("pro_array");
		String feats = multi.getParameter("feat_array");

		MultipartFile s_file = multi.getFile("s_file");
		
		String path = request.getRealPath("resources/upload/music");
		
		Date cur_date = new Date();
		
		String filename = cur_date.getTime()+"_"+s_file.getOriginalFilename();
		
	
		String ar_array[] = ar_arrays.split(",");
		String pro_array[] = pro_arrays.split(",");
		String feat_array[] = feats.split(",");
		
		try{
			byte[] fileData = s_file.getBytes();
			
			FileOutputStream fos = new FileOutputStream(path+"/"+filename);
			fos.write(fileData);
			fos.close();
		}catch(Exception e){
			System.out.println(e);
		}
		
		SongVo vo = new SongVo();
		
		int s_no = dao.getSongNextNo();
		
		Date release_date = null;
		
		try {
			release_date = new SimpleDateFormat("yyyy-MM-dd").parse(r_date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		vo.setS_no(s_no);
		vo.setS_title(s_title);
		vo.setLyrics(lyrics);
		vo.setRelease_date(release_date);
		vo.setS_file(filename);
		vo.setEtc(etc);
		
		int re = dao.insertSong(vo);
		

		HashMap<Object,Object> trk_map = new HashMap<Object,Object>();
		trk_map.put("a_no", a_no);
		trk_map.put("s_no", s_no);
		
		String a_name = "";
		
		if(ar_array[0].equals("0")){
			a_name = multi.getParameter("og-artist");
			a_name = a_name.trim();
		}else{
			for(int i=0;i<ar_array.length;i++){
				ArtistVo ar_vo = dao.detailArtist(Integer.parseInt(ar_array[i]));
				if(i == 0){
					a_name += ar_vo.getAr_name();	
				}else{
					a_name += ", "+ar_vo.getAr_name();
				}
			}
		}

		trk_map.put("a_name", a_name);
		
		dao.insertAlbumTrack(trk_map);
		
		List<HashMap<Object, Object>> ar_list = dao.listAlbumArtist(a_no);
		
		if(ar_array[0].equals("0")){
			for(int i=0;i<ar_list.size();i++){
				HashMap<Object,Object> ar_map = new HashMap<Object,Object>();
				ar_map.put("s_no", s_no);
				ar_map.put("ar_no",ar_list.get(i).get("ar_no"));
				ar_map.put("input_idx", i+1);
				dao.insertSongArtist(ar_map);
			}
		}else{
			for(int i=0;i<ar_array.length;i++){
				HashMap<Object,Object> ar_map = new HashMap<Object,Object>();
				ar_map.put("s_no", s_no);
				ar_map.put("ar_no",ar_array[i]);
				ar_map.put("input_idx", i+1);
				dao.insertSongArtist(ar_map);
			}
		}
		
		if(!pro_array[0].equals("*")){
			for(int i=0;i<pro_array.length;i++){
				HashMap<Object,Object> ar_map = new HashMap<Object,Object>();
				ar_map.put("s_no", s_no);
				ar_map.put("ar_no",pro_array[i]);
				ar_map.put("input_idx", i+1);
				dao.insertSongProducer(ar_map);
			}
		}
		
		System.out.println(feat_array[0]+"t"+feat_array.length);
		if(!feat_array[0].equals("0")){
			for(int i=0;i<feat_array.length;i++){
				HashMap<Object,Object> ar_map = new HashMap<Object,Object>();
				ar_map.put("s_no", s_no);
				ar_map.put("ar_no",Integer.parseInt(feat_array[i]));
				ar_map.put("input_idx", i+1);
				dao.insertSongFeat(ar_map);
			}
		}

		
		try {
			if(re == 1){
				content = mapper.writeValueAsString("트랙이 등록되었습니다!");
			}else{
				content = mapper.writeValueAsString("트랙 등록에 실패하였습니다!");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
	
	@RequestMapping(value="/insertNews.do",method=RequestMethod.GET)
	public ModelAndView newsForm(){
		ModelAndView view = new ModelAndView();
		
		view.addObject("page","news/insertNews.jsp");
		view.addObject("ar_vo",dao.listArtist());
		
		view.setViewName("template");
		
		return view;
	}
	
	@RequestMapping(value="/insertNews.do",method=RequestMethod.POST)
	public ModelAndView newsSubmit(HttpServletRequest request, HttpSession session){
		ModelAndView view = new ModelAndView();
		
		BoardVo b = new BoardVo();
		
		int m_no = Integer.parseInt(session.getAttribute("m_no")+"");
		String[] artists = request.getParameterValues("related-artist");
		
		int b_no = dao.getBoardNextNo();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String fname = request.getParameter("fname");
		
		b.setB_no(b_no);
		b.setM_no(m_no);
		b.setTitle(title);
		b.setContent(content);
		b.setFname(fname);
		
		int re = dao.insertNews(b);
		
		if(re == 1){
			HashMap<Object, Object> map = new HashMap<Object, Object>();
			
			for(int i=0;i<artists.length;i++){
				map.put("b_no", b_no);
				map.put("ar_no", artists[i]);
				
				dao.insertBoardArtist(map);
			}
			session.setAttribute("msg", "글이 등록되었습니다!");
		}else{
			session.setAttribute("msg", "글 등록에 실패했습니다.");
		}
		
		view.setViewName("redirect:/front.do");
		
		return view;
	}
	
	@RequestMapping(value="/insertComments.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String insertComments(HttpServletResponse response, HttpServletRequest request,
			MultipartHttpServletRequest multi){
		
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int c_no = dao.getCommentsNextNo();
		
		int group_no = c_no;
		int parent_c_no = 0;
		int depth = 0;
		int order_no = 1;
		
		if(multi.getParameter("p_no") != null){
			CommentsVo p = dao.detailComments(Integer.parseInt(multi.getParameter("p_no")));
			
			int p_no_re = dao.selectCountByParentNo(Integer.parseInt(multi.getParameter("p_no")));
			
			group_no = p.getGroup_no();
			parent_c_no = Integer.parseInt(multi.getParameter("p_no"));
			depth = p.getDepth()+1;
			
			if(p_no_re > 0){
				order_no = dao.selectMaxOrderNoByParentNo(Integer.parseInt(multi.getParameter("p_no")));
				order_no++;
			}else{
				order_no = p.getOrder_no()+1;
			}
			dao.updateOrderNoByGroupNo(order_no, group_no);

		}
		
		int b_no = Integer.parseInt(multi.getParameter("b_no"));
		int m_no = Integer.parseInt(multi.getParameter("m_no"));
		String content = multi.getParameter("content");
		
		CommentsVo c = new CommentsVo();
		
		c.setC_no(c_no);
		c.setB_no(b_no);
		c.setM_no(m_no);
		c.setContent(content);
		c.setGroup_no(group_no);
		c.setParent_c_no(parent_c_no);
		c.setDepth(depth);
		c.setOrder_no(order_no);
		
		int re = dao.insertComments(c);
		//MultipartFile s_file = multi.getFile("s_file");

//		try{
//			byte[] fileData = s_file.getBytes();
//			
//			FileOutputStream fos = new FileOutputStream(path+"/"+filename);
//			fos.write(fileData);
//			fos.close();
//		}catch(Exception e){
//			System.out.println(e);
//		}
		System.out.println(b_no+","+m_no+","+content);
		
		try {
			if(re != -1){
				dao.updateCommentsCount(b_no);
				res = mapper.writeValueAsString("댓글이 등록되었습니다!");
			}else{
				res = mapper.writeValueAsString("댓글 등록에 실패하였습니다!");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return res;
	}
	@RequestMapping(value="/checkBoardRating.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailBoardRatingHistory(HttpServletRequest request){
		String result = "";
		
		ObjectMapper mapper = new ObjectMapper();
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("m_no", m_no);
		map.put("b_no", b_no);
		
		int no = dao.checkBoardRating(map);
		
		try {
			result = mapper.writeValueAsString(no);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/detailBoardRating.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailNewsRating(HttpServletRequest request,HttpSession session){
		String result = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		
		BoardVo b = dao.detailNews(b_no);
		
		try {
			result = mapper.writeValueAsString(b.getRating()+"");
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/updateBoardHistory.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String updateBoardHistory(HttpSession session, HttpServletRequest request){
		
		String res = "";
		String data_chk = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		String m_no = session.getAttribute("m_no")+"";
		
		String b_no = request.getParameter("b_no");
		String member_chk = request.getParameter("member_chk");
		System.out.println(member_chk);
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("b_no", b_no);
		map.put("m_no", m_no);
		int re = 0;
		int rating = 0;
		
		if(member_chk.equals("0")){
			dao.updateBoardRating(Integer.parseInt(b_no));
			re = dao.insertBoardHistory(map);
			data_chk = "추가";
		}else if(member_chk.equals("1")){
			dao.updateBoardRatingQuit(Integer.parseInt(b_no));
			re = dao.removeBoardHistory(map);
			data_chk = "삭제";
		}
		BoardVo b = dao.detailNews(Integer.parseInt(b_no));
		try {
			if(re != -1){
				res = mapper.writeValueAsString(b.getRating());
			}else{
				res = mapper.writeValueAsString(".");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	@RequestMapping(value="/updateBoardRating.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String updateBoardRating(HttpSession session, HttpServletResponse response, HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("b_no", b_no);
		map.put("m_no", m_no);
		
		int re = dao.insertBoardHistory(map);
		
		try {
			if(re != -1){
				dao.updateBoardRating(b_no);
				res = mapper.writeValueAsString(dao.detailNews(b_no).getRating()+"");
			}else{
				res = mapper.writeValueAsString("실패");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return res;
	}
	@RequestMapping(value="/updateBoardRatingQuit.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String updateBoardRatingQuit(HttpSession session, HttpServletResponse response, HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("b_no", b_no);
		map.put("m_no", m_no);

		int re = dao.removeBoardHistory(map);
		
		try {
			if(re != -1){
				dao.updateBoardRatingQuit(b_no);
				res = mapper.writeValueAsString(dao.detailNews(b_no).getRating()+"");
			}else{
				res = mapper.writeValueAsString("실패");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return res;
	}
	@RequestMapping("/updateSong.do")
	public ModelAndView updateSong(SongVo s, boolean hitAdd){
		ModelAndView view = new ModelAndView();
		return view;
	}
	@RequestMapping(value="/updateComments.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String updateComments(HttpSession session, HttpServletResponse response, HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int c_no = Integer.parseInt(request.getParameter("c_no"));
		String content = request.getParameter("content");
		
		System.out.println(c_no);
		System.out.println(content);
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("content", content);
		map.put("c_no", c_no);

		
		int re = dao.updateComments(map);
		
		try {
			if(re != -1){
				res = mapper.writeValueAsString("댓글이 수정되었습니다!");
			}else{
				res = mapper.writeValueAsString("댓글 수정에 실패하였습니다!");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return res;
	}
	
	@RequestMapping(value="/updateCommentsRating.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String updateCommentsRating(HttpSession session, HttpServletResponse response, HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int c_no = Integer.parseInt(request.getParameter("c_no"));
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		
		
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("c_no", c_no);
		map.put("m_no", session.getAttribute("m_no"));
		map.put("b_no", b_no);
		
		int re = dao.insertCommentsHistory(map);
		
		try {
			if(re != -1){
				dao.updateCommentRating(c_no);
				res = mapper.writeValueAsString(dao.detailComments(c_no).getRating()+"");
			}else{
				res = mapper.writeValueAsString("실패");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return res;
	}
	@RequestMapping(value="/updateCommentsRatingQuit.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String updateCommentsRatingQuit(HttpSession session, HttpServletResponse response, HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int c_no = Integer.parseInt(request.getParameter("c_no"));
		
		
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("c_no", c_no);
		map.put("m_no", session.getAttribute("m_no"));
		
		int re = dao.deleteCommentsHistory(map);
		
		try {
			if(re != -1){
				dao.updateCommentRatingQuit(c_no);
				res = mapper.writeValueAsString(dao.detailComments(c_no).getRating()+"");
			}else{
				res = mapper.writeValueAsString("실패");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return res;
	}
	@RequestMapping(value="/deleteComments.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String deleteComments(HttpServletResponse response, HttpServletRequest request,
			MultipartHttpServletRequest multi){
		
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		int c_no = Integer.parseInt(request.getParameter("c_no"));
		int group_no = Integer.parseInt(request.getParameter("group_no"));
		
		int start = dao.detailComments(c_no).getOrder_no();
		int end = dao.selectMaxOrderNoByParentNo(c_no);
		
		List<Integer> c_list = dao.selectCnoListByParentNo(c_no);
		
		for(int i=0;i<c_list.size();i++){
			HashMap<Object,Object> c_list_map = new HashMap<Object,Object>();
			c_list_map.put("c_no",c_list.get(i));
			c_list_map.put("m_no", "");
			dao.deleteCommentsHistory(c_list_map);
			dao.updateCommentsCountRemove(b_no);
		}
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("start", start);
		map.put("end", end);
		map.put("group_no", group_no);
		
		int re = dao.deleteComments(map);
		System.out.println(re);
		try {
			if(re != -1){
				
				res = mapper.writeValueAsString("댓글이 삭제되었습니다!");
			}else{
				res = mapper.writeValueAsString("댓글 삭제에 실패하였습니다!");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return res;
	}
	@RequestMapping(value="/checkSongRating.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailSongRatingHistory(HttpServletRequest request){
		String result = "";
		
		ObjectMapper mapper = new ObjectMapper();
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		int s_no = Integer.parseInt(request.getParameter("s_no"));
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("m_no", m_no);
		map.put("s_no", s_no);
		
		int no = dao.checkSongRating(map);
		
		try {
			result = mapper.writeValueAsString(no);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/detailSongRating.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailSongRating(HttpServletRequest request,HttpSession session){
		String result = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int s_no = Integer.parseInt(request.getParameter("s_no"));
		
		TrackVo t = dao.detailSong(s_no);
		
		try {
			result = mapper.writeValueAsString(t.getRating()+"");
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/checkArtistRating.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailArtistRatingHistory(HttpServletRequest request){
		String result = "";
		
		ObjectMapper mapper = new ObjectMapper();
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		int ar_no = Integer.parseInt(request.getParameter("ar_no"));
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("m_no", m_no);
		map.put("ar_no", ar_no);
		
		int no = dao.checkArtistRating(map);
		
		try {
			result = mapper.writeValueAsString(no);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/detailArtistRating.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailArtistRating(HttpServletRequest request,HttpSession session){
		String result = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int ar_no = Integer.parseInt(request.getParameter("ar_no"));
		
		ArtistVo a = dao.detailArtist(ar_no);
		
		try {
			result = mapper.writeValueAsString(a.getRating()+"");
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/updateSongRating.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String updateSongRating(HttpSession session, HttpServletResponse response, HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int s_no = Integer.parseInt(request.getParameter("s_no"));		
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("s_no", s_no);
		map.put("m_no", session.getAttribute("m_no"));
		
		int re = dao.insertSongHistory(map);
		
		try {
			if(re != -1){
				dao.updateSongRating(s_no);
				res = mapper.writeValueAsString(dao.detailSong(s_no).getRating()+"");
			}else{
				res = mapper.writeValueAsString("실패");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return res;
	}
	@RequestMapping(value="/updateSongRatingQuit.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String updateSongRatingQuit(HttpSession session, HttpServletResponse response, HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int s_no = Integer.parseInt(request.getParameter("s_no"));
		
		
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("s_no", s_no);
		map.put("m_no", session.getAttribute("m_no"));
		
		int re = dao.removeSongHistory(map);
		
		try {
			if(re != -1){
				dao.updateSongRatingQuit(s_no);
				res = mapper.writeValueAsString(dao.detailSong(s_no).getRating()+"");
			}else{
				res = mapper.writeValueAsString("실패");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return res;
	}
	@RequestMapping(value="/updateArtistRating.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String updateArtistRating(HttpSession session, HttpServletResponse response, HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int ar_no = Integer.parseInt(request.getParameter("ar_no"));		
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("ar_no", ar_no);
		map.put("m_no", session.getAttribute("m_no"));
		
		int re = dao.insertArtistHistory(map);
		
		try {
			if(re != -1){
				dao.updateArtistRating(ar_no);
				res = mapper.writeValueAsString(dao.detailArtist(ar_no).getRating()+"");
			}else{
				res = mapper.writeValueAsString("실패");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return res;
	}
	@RequestMapping(value="/updateArtistRatingQuit.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String updateArtistRatingQuit(HttpSession session, HttpServletResponse response, HttpServletRequest request){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int ar_no = Integer.parseInt(request.getParameter("ar_no"));
		
		
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("ar_no", ar_no);
		map.put("m_no", session.getAttribute("m_no"));
		
		int re = dao.removeArtistHistory(map);
		
		try {
			if(re != -1){
				dao.updateArtistRatingQuit(ar_no);
				res = mapper.writeValueAsString(dao.detailArtist(ar_no).getRating()+"");
			}else{
				res = mapper.writeValueAsString("실패");
			}
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return res;
	}
	@RequestMapping("/imageCrop.do")
	public String imageCrop(String q){
		
		String addr = "";
		
		if(q.equals("profile")){
			addr = "artist/profilePopup";
		}else if(q.equals("bg")){
			addr = "artist/bgPopup";
		}else if(q.equals("album")){
			addr = "album/profilePopup";
		}else if(q.equals("news-preview")){
			addr = "news/previewPopup";
		}else if(q.equals("member-profile")){
			addr = "member/profilePopup";
		}
		
		return addr;
	}
	
	@RequestMapping(value="/artistTempUpload.do",method=RequestMethod.POST,produces="text/plain;charset=utf-8")
	public @ResponseBody String artistTempUpload(HttpSession session,MultipartHttpServletRequest multi,HttpServletResponse response, HttpServletRequest request){
		
		
		ObjectMapper mapper = new ObjectMapper();
		
		MultipartFile file = multi.getFile("temp_img");
		String source = multi.getParameter("source");
		System.out.println("넘어옴");
		System.out.println(file.getOriginalFilename()+","+source);
		
		String path = request.getRealPath("resources/upload/"+source);
		
		int index = file.getOriginalFilename().lastIndexOf(".");
		String name = file.getOriginalFilename().substring(0,index);
		String ext = file.getOriginalFilename().substring(index+1);
		
		Date time = new Date();
		
		String filename = name+"_"+time.getTime()+"."+ext;
		
		String result = "";
		
		try{
			byte[] fileData = file.getBytes();
			
			FileOutputStream fos = new FileOutputStream(path+"/"+filename);
			fos.write(fileData);
			fos.close();
			result = mapper.writeValueAsString(filename);
			
		}catch(Exception e){
			System.out.println(e);
		}
		return result;
	}
	
	@RequestMapping(value="/artistCropOk.do",produces="text/plain;charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String artistCropOk(HttpSession session, HttpServletResponse response, HttpServletRequest request,
			MultipartHttpServletRequest multi)
	{
		String res = "";
		
		String id = "";
		
		if(session.getAttribute("m_id") != null){
			id = session.getAttribute("m_id").toString();
		}
		
		ObjectMapper mapper = new ObjectMapper();
		
		String x = multi.getParameter("x");
		String y = multi.getParameter("y");
		String w = multi.getParameter("w");
		String h = multi.getParameter("h");
		
	
		if(x.contains(".")){
			x = x.substring(0, x.indexOf("."));
		}
		if(y.contains(".")){
			y = y.substring(0, y.indexOf("."));
		}
		if(w.contains(".")){
			w = w.substring(0, w.indexOf("."));
		}
		if(h.contains(".")){
			h = h.substring(0, h.indexOf("."));
		}
		
		int t=Integer.parseInt(x);
		int l=Integer.parseInt(y);
		int width=Integer.parseInt(w);
		int height=Integer.parseInt(h);

		String i = multi.getParameter("i");
		String source = multi.getParameter("source");
		
		System.out.println(t+","+l+","+width+","+height+","+i);
		
		String temp_path = "";
		
		if(source.equals("artist/profile")){
			temp_path = "artist_temp/profile";
		}else if(source.equals("artist/bg")){
			temp_path = "artist_temp/bg";
		}else if(source.equals("album")){
			temp_path = "album_temp";
		}else if(source.equals("news/preview")){
			temp_path = "news_temp";
		}else if(source.equals("member_profile")){
			temp_path = "member_profile_temp";
		}
		
		String path = request.getRealPath("resources/upload/"+temp_path);
		String real_path = request.getRealPath("resources/upload/"+source);
		String filename = "";
		try{
			BufferedImage og_img=ImageIO.read(new File(path+"/"+i));
			BufferedImage cropped_img=og_img.getSubimage(t, l, width, height);
		
			int index = i.lastIndexOf(".");
			String name = i.substring(0,index);
			String ext = i.substring(index+1);
			
			filename = name+"."+ext;
			
			ImageIO.write(cropped_img, ext, new File(real_path+"/"+filename));

			res = mapper.writeValueAsString("resources/upload/"+source+"/"+filename);

			
			
			File temp_files[] = new File(path).listFiles();

			String temp_name = "";
			if(source.equals("member_profile")){
				for(int j=0;j<temp_files.length;j++){
					temp_name = temp_files[j].getName();
					
					temp_files[j].delete();

				}
			}else{
				for(int j=0;j<temp_files.length;j++){
					temp_name = temp_files[j].getName();
					
					if(temp_name.substring(temp_name.lastIndexOf("_")+1,temp_name.length()-4).equals(id)){
						temp_files[j].delete();
					}
				}
			}
			
			
			if(multi.getParameter("og") != null && multi.getParameter("og") != ""){
				String og_profile = multi.getParameter("og");
					
				og_profile = og_profile.substring(og_profile.lastIndexOf("/")+1,og_profile.length());
				
				System.out.println(og_profile);
				File og_file = new File(real_path+"/"+og_profile);
				og_file.delete();
			}
			
			
		}catch(Exception e){
			System.out.println(e);
		}

		
		return res;
	}
	@RequestMapping(value="/login.do",produces="text/plain;charset=utf-8")
	public @ResponseBody String login(HttpServletRequest request,HttpSession session){
		String result = "";

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");  
		
		ObjectMapper mapper = new ObjectMapper();
		
		HashMap<Object, Object> map = new HashMap<Object,Object>();
		map.put("m_id", id);
		map.put("pwd", pwd);
		
		MemberVo vo = dao.chkMember(map);
		
		
		try {
			if(vo != null){
				result = mapper.writeValueAsString(vo.getM_no()+"/"+vo.getM_level());
				session.setAttribute("m_no", vo.getM_no());
				session.setAttribute("m_id", vo.getM_id());
				session.setAttribute("m_level", vo.getM_level());
				session.setAttribute("logininfo", "true");
			}
			
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/logout.do",produces="text/plain;charset=utf-8")
	public @ResponseBody String logout(HttpServletRequest request,HttpSession session){
		String result = "";
		
		if(session.getAttribute("m_no") != null){
			session.removeAttribute("m_no");
			session.removeAttribute("m_id");
			session.removeAttribute("m_level");
			session.removeAttribute("logininfo");
		}
		
		return result;
	}
	@RequestMapping(value="/loginChk.do",produces="text/plain;charset=utf-8")
	public @ResponseBody String loginChk(HttpServletRequest request,HttpSession session){
		String result = "";
		
		if(session.getAttribute("m_no") != null){
			result = "1";
		}else{
			result = "0";
		}
		
		return result;
	}
	@RequestMapping(value="/join.do",produces="text/plain; charset=utf-8",method=RequestMethod.GET)
	public ModelAndView joinForm(HttpSession session){
		ModelAndView view = new ModelAndView();
		if(session.getAttribute("logininfo") != null){
			view.setViewName("redirect:/front.do");
		}else{
			view.addObject("page","member/join.jsp");
			view.setViewName("template");
			
		}
		
		return view;
	}
	@RequestMapping(value="/join.do",produces="text/plain; charset=utf-8",method=RequestMethod.POST)
	public ModelAndView joinSubmit(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView();
		
		MemberVo vo = new MemberVo();
		
		String m_id = request.getParameter("m_id");
		String pwd = request.getParameter("pwd");
		String last_name = request.getParameter("last-name");
		String first_name = request.getParameter("first-name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String postcode = request.getParameter("postcode");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		
		String name = last_name+" "+first_name;
		
		String addr = postcode+"/"+addr1+"/"+addr2;
		Date cur_date = new Date();
		String profile = "resources/upload/profile_default.png";
		
		if(request.getParameter("profile") != null && request.getParameter("profile") != ""){
			profile = request.getParameter("profile");
		}
		
		vo.setM_id(m_id);
		vo.setPwd(pwd);
		vo.setM_name(name);
		vo.setPhone(phone);
		vo.setEmail(email);
		vo.setAddr(addr);
		vo.setProfile(profile);
		int re = dao.insertMember(vo);
		System.out.println("가입");
		
		String msg = "";
		if(re != -1){
			msg = "회원가입이 완료되었습니다!";
		}else{
			msg = "회원가입에 실패했습니다.";
		}
		
		view.addObject("msg",msg);
		view.addObject("page","member/joinOk.jsp");
		view.setViewName("template");
		
		return view;
	}

	@RequestMapping(value="/memberIdChk.do",produces="text/plain;charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String memberIdChk(HttpServletRequest request,HttpSession session){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		String m_id = request.getParameter("m_id");
		
			try {
				if(dao.memberIdChk(m_id).size() > 0){
					res = mapper.writeValueAsString("x");
				}else{
					res = mapper.writeValueAsString("o");
				}
				
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		return res;
	}
	@RequestMapping(value="/memberPwdChk.do",produces="text/plain;charset=utf-8",method=RequestMethod.POST)
	public @ResponseBody String memberPwdChk(HttpServletRequest request,HttpSession session){
		String res = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		String m_id = request.getParameter("m_id");
		String pwd = request.getParameter("pwd");
		
		map.put("m_id", m_id);
		map.put("pwd", pwd);
		
		try {
			res = mapper.writeValueAsString(dao.memberPwdChk(map));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return res;
	}
	@RequestMapping(value="/myPage.do",produces="text/plain; charset=utf-8",method=RequestMethod.GET)
	public ModelAndView myPageForm(){
		ModelAndView view = new ModelAndView();
		
		view.addObject("page","member/myPage.jsp");
		view.setViewName("template");
		
		return view;
	}
	//=================member==============================
	@RequestMapping(value="/fintlogin.do")
	public void findlogin(HttpServletRequest request){
		request.getSession().setAttribute("logininfo", true);
	}
	@RequestMapping(value="/loginPage.do",produces="text/plain; charset=utf-8",method=RequestMethod.GET)
	public ModelAndView loginPage(HttpServletRequest request,HttpSession session){
		ModelAndView view = new ModelAndView();
		
		if(session.getAttribute("logininfo")!= null){
			view.setViewName("redirect:/front.do");
		}else{
			view.addObject("page","member/login.jsp");
			view.setViewName("template");
		}
		
		
		
		return view;
	}
	@RequestMapping(value="/goFront.do",produces="text/plain; charset=utf-8",method=RequestMethod.GET)
	public ModelAndView goFront(HttpServletRequest request,HttpSession session){
		ModelAndView view = new ModelAndView();
		
		session.setAttribute("snippet", "게시판 접근 권한이 없습니다.");
		
		view.setViewName("redirect:/front.do");
//		view.addObject("page", "body.jsp");
//		view.setViewName("template");
		
		return view;
	}
	@RequestMapping(value="/detailMember.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String detailMember(HttpServletRequest request,HttpSession session){
		String result = "";
		int m_no = -1;
		
		ObjectMapper mapper = new ObjectMapper();

		if(session.getAttribute("m_no") != null && session.getAttribute("m_no") != ""){
			m_no = Integer.parseInt(session.getAttribute("m_no").toString());
		}
		
		MemberVo m = dao.detailMember(m_no);
		
		try {
			result = mapper.writeValueAsString(m);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/myComments.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String myComments(HttpServletRequest request,HttpSession session){
		String result = "";
		int m_no = -1;
		
		ObjectMapper mapper = new ObjectMapper();
		
		int page_no = Integer.parseInt(request.getParameter("page_no"));
		
		int end = page_no*5;
		int start = end - 4;
		
		String keyField = "";
		if(request.getParameter("keyField") == null || request.getParameter("keyField") == ""){
			keyField = "upload_time";
		}else{
			keyField = request.getParameter("keyField");
		}
		
		
		if(session.getAttribute("m_no") != null && session.getAttribute("m_no") != ""){
			m_no = Integer.parseInt(session.getAttribute("m_no").toString());
		}
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("m_no", m_no);
		map.put("start", start);
		map.put("end", end);
		map.put("keyField", keyField);
		
		List<HashMap<Object,Object>> res_map = dao.myComments(map);
		
		try {
			result = mapper.writeValueAsString(res_map);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/countMyComments.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String countMyBoard(HttpServletRequest request,HttpSession session){
		String result = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		
		int cnt = dao.countMyComments(m_no);
		
		try {
			result = mapper.writeValueAsString(cnt);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/myMusic.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String myMusic(HttpServletRequest request,HttpSession session){
		String result = "";
		int m_no = -1;
		
		ObjectMapper mapper = new ObjectMapper();
		
		int page_no = Integer.parseInt(request.getParameter("page_no"));
		
		int end = page_no*5;
		int start = end - 4;
		
		String keyField = "";
		if(request.getParameter("keyField") == null || request.getParameter("keyField") == ""){
			keyField = "release_date";
		}else{
			keyField = request.getParameter("keyField");
		}
		
		
		if(session.getAttribute("m_no") != null && session.getAttribute("m_no") != ""){
			m_no = Integer.parseInt(session.getAttribute("m_no").toString());
		}
		System.out.println(m_no);
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("m_no", m_no);
		map.put("start", start);
		map.put("end", end);
		map.put("keyField", keyField);
		
		List<HashMap<Object,Object>> res_map = dao.myMusic(map);
		
		try {
			result = mapper.writeValueAsString(res_map);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/countMyMusic.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
	public @ResponseBody String countMyMusic(HttpServletRequest request,HttpSession session){
		String result = "";
		
		ObjectMapper mapper = new ObjectMapper();
		
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		
		int cnt = dao.countMyMusic(m_no);
		
		try {
			result = mapper.writeValueAsString(cnt);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@RequestMapping(value="/updateMember.do",produces="text/plain; charset=utf-8",method=RequestMethod.GET)
	public ModelAndView updateMemberForm(HttpServletRequest request,HttpServletResponse response,
									@RequestParam(value="m_id",defaultValue="") String m_id,
									@RequestParam(value="pwd",defaultValue="")String pwd){
		ModelAndView view = new ModelAndView();
		
		MemberVo vo = new MemberVo();
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("m_id", m_id);
		map.put("pwd", pwd);
		
		view.addObject("vo",dao.updateMemberForm(map));
		view.addObject("page","member/updateMember.jsp");
		view.setViewName("template");
		
		return view;
	}
	@RequestMapping(value="/updateMember.do",produces="text/plain; charset=utf-8",method=RequestMethod.POST)
	public ModelAndView updateMemberSubmit(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView();
		
		MemberVo vo = new MemberVo();
		
		String m_id = request.getParameter("m_id");
		String pwd = request.getParameter("pwd");
		String last_name = request.getParameter("last-name");
		String first_name = request.getParameter("first-name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String postcode = request.getParameter("postcode");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		
		String original_profile = request.getParameter("original-profile");
		
		String name = last_name+" "+first_name;
		
		String addr = postcode+"/"+addr1+"/"+addr2;
		
		Date cur_date = new Date();
		
		String profile = "resources/upload/profile_default.png";
		
		
		if(request.getParameter("profile") != null && request.getParameter("profile") != ""){
			if(!request.getParameter("profile").equals(original_profile)){
				
				profile = request.getParameter("profile");
				

				int index = profile.lastIndexOf(".");
				String real_name = profile.substring(0,index);
				String ext = profile.substring(index+1);
				
				profile = real_name+"."+ext;
				
				String path = request.getRealPath("");
				System.out.println(path);
				File file = new File(path+"/"+original_profile);
				file.delete();
				
			}else{
				profile = original_profile;
			}
		}
		
		vo.setM_id(m_id);
		vo.setPwd(pwd);
		vo.setM_name(name);
		vo.setPhone(phone);
		vo.setEmail(email);
		vo.setAddr(addr);
		vo.setProfile(profile);
		int re = dao.updateMember(vo);
		System.out.println("수정");
		
		String msg = "";
		if(re != -1){
			msg = "회원 정보가 수정되었습니다!";
		}else{
			msg = "회원 정보 수정에 실패했습니다.";
		}
		
		view.addObject("msg",msg);
		view.addObject("page","member/updateMemberOk.jsp");
		view.setViewName("template");
		
		return view;
	}
//	@RequestMapping(value="/myPost.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
//	public @ResponseBody String myBoard(HttpServletRequest request,HttpSession session){
//		String result = "";
//		int m_no = -1;
//		
//		ObjectMapper mapper = new ObjectMapper();
//		
//		int page_no = Integer.parseInt(request.getParameter("page_no"));
//		
//		int end = page_no*10;
//		int start = end - 9;
//		
//		String keyField = request.getParameter("keyField");
//		
//		if(session.getAttribute("m_no") != null && session.getAttribute("m_no") != ""){
//			m_no = Integer.parseInt(session.getAttribute("m_no").toString());
//		}
//		
//		HashMap<Object,Object> map = new HashMap<Object,Object>();
//		map.put("m_no", m_no);
//		map.put("start", start);
//		map.put("end", end);
//		map.put("keyField", keyField);
//		
//		List<BoardVo> res_map = dao.myPost(map);
//		
//		try {
//			result = mapper.writeValueAsString(res_map);
//		} catch (JsonProcessingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		return result;
//	}
//	@RequestMapping(value="/countMyPost.do",produces="text/plain; charset=utf-8", method=RequestMethod.POST)
//	public @ResponseBody String countMyBoard(HttpServletRequest request,HttpSession session){
//		String result = "";
//		
//		ObjectMapper mapper = new ObjectMapper();
//		
//		int m_no = Integer.parseInt(request.getParameter("m_no"));
//		
//		int cnt = dao.countMyPost(m_no);
//		
//		try {
//			result = mapper.writeValueAsString(cnt);
//		} catch (JsonProcessingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		return result;
//	}
}