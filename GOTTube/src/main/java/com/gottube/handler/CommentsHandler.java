package com.gottube.handler;

import com.gottube.dao.GOTDao;
import com.gottube.vo.CommentsVo;

public class CommentsHandler {
	private GOTDao dao;
	
	public CommentsHandler(){
		dao = new GOTDao();
	}
	
	public boolean addNewCommentsDepthOne(CommentsVo vo){
		int order_no = this.getNewOrderNo(vo);
		vo.setOrder_no(order_no);
		if(order_no > 0){
			dao.updateOrderNoByGroupNo(vo.getOrder_no(), vo.getGroup_no());
		}
		return dao.insertComments(vo) > 0;
	}
	private int getNewOrderNo(CommentsVo vo){
		if(dao.selectCountByParentNo(vo.getParent_c_no()) > 0){
			int newOrderNo = dao.selectMaxOrderNoByParentNo(vo.getC_no());
			return newOrderNo + 1;
		}else{
			if(vo.getParent_c_no() != 0){
				int newOrderNo = dao.selectLatestOrderNoByParentNo(vo.getC_no());
				return newOrderNo + 1;
			}
		}
		return 0;
	}
}
