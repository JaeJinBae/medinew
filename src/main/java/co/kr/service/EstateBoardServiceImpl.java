package co.kr.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.domain.EstateBoardVO;
import co.kr.domain.SearchCriteria;
import co.kr.persistence.EstateBoardDao;

@Service
public class EstateBoardServiceImpl implements EstateBoardService {
	
	@Autowired
	private EstateBoardDao dao;
	
	@Override
	public List<EstateBoardVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public EstateBoardVO selectOne(int bno) {
		return dao.selectOne(bno);
	}

	@Override
	public void insert(EstateBoardVO vo) {
		dao.insert(vo);
	}

	@Override
	public void updateCnt(int bno) {
		dao.updateCnt(bno);
	}

	@Override
	public void delete(int bno) {
		dao.delete(bno);
	}

	@Override
	public List<EstateBoardVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
