package com.gottube.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import com.gottube.vo.AlbumVo;
import com.gottube.vo.ArtistVo;
import com.gottube.vo.BoardVo;
import com.gottube.vo.CommentsVo;
import com.gottube.vo.MemberVo;
import com.gottube.vo.SongVo;
import com.gottube.vo.TrackVo;

@Repository
public class GOTDao {
	private static SqlSessionFactory factory;
	static{
		try {
			Reader reader = Resources.getResourceAsReader("com/gottube/data/sqlMapConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Dao Factory ¹®Á¦ : "+e);
		}
	}
//=======================artist=======================================================
	public int getArtistNextNo(){
		SqlSession session = factory.openSession();
		int no = session.selectOne("GOT.getArtistNextNo");
		session.close();
		return no;
	}
	
	public List<ArtistVo> listArtist(){
		List<ArtistVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listArtist");
		session.close();
		return list;
	}
	
	public List<ArtistVo> searchArtist(HashMap<Object,Object> map){
		List<ArtistVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.searchArtist",map);
		session.close();
		return list;
	}
	
	public int countSearchArtist(String ar_name){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.selectOne("GOT.countSearchArtist",ar_name);
		session.close();
		return re;
	}
	
	public List<ArtistVo> listTopArtist(HashMap<Object,Object> map){
		List<ArtistVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listTopArtist",map);
		session.close();
		return list;
	}
	public List<TrackVo> listArtistHotSong(int ar_no){
		List<TrackVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listArtistHotSong",ar_no);
		session.close();
		return list;
	}
	
	public List<TrackVo> MainHotSong(){
		List<TrackVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.MainHotSong");
		session.close();
		return list;
	}
	
	public List<HashMap<Object,Object>> listArtistRecentAlbum(int ar_no){
		List<HashMap<Object,Object>> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listArtistRecentAlbum",ar_no);
		session.close();
		return list;
	}
	
	public List<HashMap<Object,Object>> MainRecentAlbum(){
		List<HashMap<Object,Object>> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.MainRecentAlbum");
		session.close();
		return list;
	}
	
	public ArtistVo detailArtist(int ar_no){
		
		ArtistVo vo = null;
		
		SqlSession session = factory.openSession();
		vo = session.selectOne("GOT.detailArtist",ar_no);
		session.close();
		return vo;
	}
	
	public int insertArtist(ArtistVo a){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.insertArtist",a);
		session.commit();
		session.close();
		return re;
	}
	
	public int deleteArtist(int ar_no){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.deleteArtist",ar_no);
		session.commit();
		session.close();
		return re;
	}
	public int updateArtistRating(int ar_no){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateArtistRating",ar_no);
		session.commit();
		session.close();
		return no;
	}
	public int updateArtistRatingQuit(int ar_no){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateArtistRatingQuit",ar_no);
		session.commit();
		session.close();
		return no;
	}
	public int insertArtistHistory(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.insertArtistHistory",map);
		session.commit();
		session.close();
		return no;
	}
	public int removeArtistHistory(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.removeArtistHistory",map);
		session.commit();
		session.close();
		return no;
	}
	public int checkArtistRating(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.selectOne("GOT.checkArtistRating",map);
		session.close();
		return no;
	}
//====================================================================================
//============================album===================================================
	public int getAlbumNextNo(){
		SqlSession session = factory.openSession();
		int no = session.selectOne("GOT.getAlbumNextNo");
		session.close();
		return no;
	}
	
	public List<HashMap<Object,Object>> listAlbum(HashMap<Object,Object> map){
		List<HashMap<Object,Object>> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listAlbum",map);
		session.close();
		return list;
	}
	
	public List<HashMap<Object,Object>> listAlbumArtist(int a_no){
		List<HashMap<Object,Object>> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listAlbumArtist",a_no);
		session.close();
		return list;
	}
	
	public List<HashMap<Object,Object>> listAlbumTrack(int a_no){
		List<HashMap<Object,Object>> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listAlbumTrack",a_no);
		System.out.println(list.size());
		session.close();
		return list;
	}
	
	public int countAlbum(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int res = session.selectOne("GOT.countAlbum",map);
		session.close();
		return res;
	}
	
	public AlbumVo detailAlbum(int a_no){
		
		AlbumVo vo = null;
		
		SqlSession session = factory.openSession();
		vo = session.selectOne("GOT.detailAlbum",a_no);
		session.close();
		return vo;
	}
	
	public int insertAlbum(AlbumVo a){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.insertAlbum",a);
		session.commit();
		session.close();
		return re;
	}
	
	public int insertAlbumArtist(HashMap<Object,Object> map){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.insertAlbumArtist",map);
		session.commit();
		session.close();
		return re;
	}
	
	public int deleteAlbum(int a_no){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.deleteAlbum",a_no);
		session.commit();
		session.close();
		return re;
	}
//=================Song===================	
	public int getSongNextNo(){
		SqlSession session = factory.openSession();
		int no = session.selectOne("GOT.getSongNextNo");
		session.close();
		return no;
	}
	public List<TrackVo> listSong(){
		List<TrackVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listSong");
		session.close();
		return list;
	}
	public int countSearchMusic(HashMap<Object,Object> map){
		int re = 0;
		SqlSession session = factory.openSession();
		re =  session.selectOne("GOT.countSearchMusic",map);
		session.close();
		return re;
	}
	public List<TrackVo> listMusic(HashMap<Object,Object> map){
		List<TrackVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listMusic",map);
		session.close();
		return list;
	}
	public List<HashMap<Object,Object>> listSongArtist(int s_no){
		List<HashMap<Object,Object>> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listSongArtist",s_no);
		session.close();
		return list;
	}
	
	public List<HashMap<Object,Object>> listSongProducer(int s_no){
		List<HashMap<Object,Object>> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listSongProducer",s_no);
		session.close();
		return list;
	}
	
	public List<HashMap<Object,Object>> listSongFeat(int s_no){
		List<HashMap<Object,Object>> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listSongFeat",s_no);
		session.close();
		return list;
	}
	
	public TrackVo detailSong(int s_no){
		
		TrackVo vo = null;
		
		SqlSession session = factory.openSession();
		vo = session.selectOne("GOT.detailSong",s_no);
		session.close();
		return vo;
	}
	
	public int insertSong(SongVo s){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.insertSong",s);
		session.commit();
		session.close();
		return re;
	}
	
	public int insertSongArtist(HashMap<Object,Object> map){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.insertSongArtist",map);
		session.commit();
		session.close();
		return re;
	}
	
	public int insertSongProducer(HashMap<Object,Object> map){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.insertSongProducer",map);
		session.commit();
		session.close();
		return re;
	}
	
	public int insertSongFeat(HashMap<Object,Object> map){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.insertSongFeat",map);
		session.commit();
		session.close();
		return re;
	}
	
	public int insertAlbumTrack(HashMap<Object,Object> map){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.insertAlbumTrack",map);
		session.commit();
		session.close();
		return re;
	}
	
	public int updateHit(String kind,int no){
		int re = 0;
		SqlSession session = factory.openSession();
		if(kind.equals("song")){
			int s_no = no;
			re = session.update("GOT.updateSongHit",s_no);
		}else if(kind.equals("album")){
			int a_no = no;
		}else if(kind.equals("board")){
			int b_no = no;
			re = session.update("GOT.updateBoardHit",b_no);
		}else if(kind.equals("artist")){
			int ar_no = no;
		}
		session.commit();
		session.close();
		return re;
	}
	
	public int deleteSong(int s_no){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.deleteSong",s_no);
		session.commit();
		session.close();
		return re;
	}
	
	public MemberVo chkMember(HashMap<Object,Object> map){
		MemberVo vo = new MemberVo();
		SqlSession session = factory.openSession();
		vo = session.selectOne("GOT.checkMember",map);
		session.close();
		return vo;
	}
	public int updateSongRating(int s_no){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateSongRating",s_no);
		session.commit();
		session.close();
		return no;
	}
	public int updateSongRatingQuit(int s_no){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateSongRatingQuit",s_no);
		session.commit();
		session.close();
		return no;
	}
	public int insertSongHistory(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.insertSongHistory",map);
		session.commit();
		session.close();
		return no;
	}
	public int removeSongHistory(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.removeSongHistory",map);
		session.commit();
		session.close();
		return no;
	}
	public int checkSongRating(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.selectOne("GOT.checkSongRating",map);
		session.close();
		return no;
	}
	public List<HashMap<Object,Object>> myMusic(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		List<HashMap<Object,Object>> list = session.selectList("GOT.myMusic",map);
		session.close();
		return list;
	}
	public int countMyMusic(int m_no){
		SqlSession session = factory.openSession();
		int no = session.selectOne("GOT.countMyMusic",m_no);
		session.close();
		return no;
	}
//============news====================================
	
	public int getBoardNextNo(){
		SqlSession session = factory.openSession();
		int no = session.selectOne("GOT.getBoardNextNo");
		session.close();
		return no;
	}
	public List<BoardVo> listNews(HashMap<Object,Object> map){
		List<BoardVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listNews",map);
		session.close();
		return list;
	}
	public List<BoardVo> listBreaking(){
		List<BoardVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listBreaking");
		session.close();
		return list;
	}
	public int countNews(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		return session.selectOne("countNews",map);
	}
	public int insertNews(BoardVo b){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.insertNews",b);
		session.commit();
		session.close();
		return re;
	}
	
	public BoardVo detailNews(int b_no){
		BoardVo b = new BoardVo();
		SqlSession session = factory.openSession();
		b = session.selectOne("GOT.detailNews",b_no);
		session.close();
		return b;
	}
	
	public String getName(int b_no){
		String name = "";
		SqlSession session = factory.openSession();
		name = session.selectOne("GOT.getName",b_no);
		session.close();
		return name;
	}
	public int insertBoardArtist(HashMap<Object,Object> map){
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("GOT.insertBoardArtist",map);
		session.commit();
		session.close();
		return re;
	}
	public List<BoardVo> listRelatedPosts(int ar_no){
		List<BoardVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listRelatedPosts",ar_no);
		session.close();
		return list;
	}
//===============board==================================
	public int updateBoardRating(int b_no){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateBoardRating",b_no);
		session.commit();
		session.close();
		return no;
	}
	public int updateBoardRatingQuit(int b_no){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateBoardRatingQuit",b_no);
		session.commit();
		session.close();
		return no;
	}
	public int checkBoardRating(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.selectOne("GOT.checkBoardRating",map);
		session.close();
		return no;
	}
	public int insertBoardHistory(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.insert("GOT.insertBoardHistory",map);
		session.commit();
		session.close();
		return no;
	}
	public int removeBoardHistory(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.delete("GOT.removeBoardHistory",map);
		session.commit();
		session.close();
		return no;
	}
	
//============comments=================================
	public int getCommentsNextNo(){
		SqlSession session = factory.openSession();
		int no = session.selectOne("GOT.getCommentsNextNo");
		session.close();
		return no;
	}
	public int updateCommentsCount(int b_no){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateCommentsCount",b_no);
		session.commit();
		session.close();
		return no;
	}
	public int updateCommentsCountRemove(int b_no){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateCommentsCountRemove",b_no);
		session.commit();
		session.close();
		return no;
	}
	public int updateCommentRating(int c_no){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateCommentsRating",c_no);
		session.commit();
		session.close();
		return no;
	}
	public int updateCommentRatingQuit(int c_no){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateCommentsRatingQuit",c_no);
		session.commit();
		session.close();
		return no;
	}
	public int insertCommentsHistory(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.insertCommentsHistory",map);
		session.commit();
		session.close();
		return no;
	}
	public int deleteCommentsHistory(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.deleteCommentsHistory",map);
		session.commit();
		session.close();
		return no;
	}
	public List<CommentsVo> listComments(HashMap<Object,Object> map){
		List<CommentsVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("GOT.listComments",map);
		session.close();
		return list;
	}
	public int insertComments(CommentsVo c){
		SqlSession session = factory.openSession();
		int no = session.insert("GOT.insertComments",c);
		session.commit();
		session.close();
		return no;
	}
	public CommentsVo detailComments(int c_no){
		SqlSession session = factory.openSession();
		CommentsVo vo = session.selectOne("GOT.detailComments",c_no);
		session.close();
		return vo;
	}
	public int updateComments(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.update("GOT.updateComments",map);
		session.commit();
		session.close();
		return no;
	}
	public int deleteComments(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.insert("GOT.deleteComments",map);
		session.commit();
		session.close();
		return no;
	}
	public int removeCommentsHistory(int c_no){
		SqlSession session = factory.openSession();
		int no = session.insert("GOT.removeCommentsHistory",c_no);
		session.commit();
		session.close();
		return no;
	}
	public List<HashMap<Object,Object>> detailCommentsHistory(int m_no){
		SqlSession session = factory.openSession();
		List<HashMap<Object,Object>> map = session.selectList("GOT.detailCommentsHistory",m_no);
		session.close();
		return map;
	}
	public int selectCountByParentNo(int parent_c_no){
		SqlSession session = factory.openSession();
		int no  = session.selectOne("GOT.selectCountParentNo",parent_c_no);
		session.close();
		return no;
	}
	public int selectMaxOrderNoByParentNo(int c_no){
		SqlSession session = factory.openSession();
		int no  = session.selectOne("GOT.selectMaxOrderNoByParentNo",c_no);
		session.close();
		return no;
	}
	public List<Integer> selectCnoListByParentNo(int c_no){
		SqlSession session = factory.openSession();
		List<Integer> list  = session.selectList("GOT.selectCnoListByParentNo",c_no);
		session.close();
		return list;
	}
	public int selectLatestOrderNoByParentNo(int c_no){
		SqlSession session = factory.openSession();
		int no  = session.selectOne("GOT.selectLatestOrderNoByParentNo",c_no);
		session.close();
		return no;
	}
	public int updateOrderNoByGroupNo(int order_no,int group_no){
		SqlSession session = factory.openSession();
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("order_no", order_no);
		map.put("group_no", group_no);
		int no = session.insert("GOT.updateOrderNoByGroupNo",map);
		session.commit();
		session.close();
		return no;
	}
	//==========member==========================
	public List<MemberVo> memberIdChk(String m_id){
		SqlSession session = factory.openSession();
		List<MemberVo> list = session.selectList("GOT.memberIdChk",m_id);
		session.close();
		return list;
	}
	public int memberPwdChk(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		int no = session.selectOne("GOT.memberPwdChk",map);
		session.close();
		return no;
	}
	public MemberVo detailMember(int m_no){
		SqlSession session = factory.openSession();
		MemberVo vo = session.selectOne("GOT.detailMember",m_no);
		session.close();
		return vo;
	}
	public MemberVo updateMemberForm(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		MemberVo vo = session.selectOne("GOT.updateMemberForm",map);
		session.close();
		return vo;
	}
	public List<BoardVo> myPost(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		List<BoardVo> res_map = session.selectList("GOT.myPost",map);
		session.close();
		return res_map;
	}
	public int countMyPost(int m_no){
		SqlSession session = factory.openSession();
		int re = session.insert("GOT.countMyPost",m_no);
		session.close();
		return re;
	}
	public List<HashMap<Object,Object>> myComments(HashMap<Object,Object> map){
		SqlSession session = factory.openSession();
		List<HashMap<Object,Object>> res_map = session.selectList("GOT.myComments",map);
		session.close();
		return res_map;
	}
	public int countMyComments(int m_no){
		SqlSession session = factory.openSession();
		int re = session.selectOne("GOT.countMyComments",m_no);
		session.close();
		return re;
	}
	public int insertMember(MemberVo m){
		SqlSession session = factory.openSession();
		int re = session.insert("GOT.insertMember",m);
		session.commit();
		session.close();
		return re;
	}
	public int updateMember(MemberVo m){
		SqlSession session = factory.openSession();
		int re = session.insert("GOT.updateMember",m);
		session.commit();
		session.close();
		return re;
	}
}
