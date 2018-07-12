package co.kr.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.domain.EstateBoardVO;
import co.kr.domain.SearchCriteria;

@Repository
public class EstateBoardDaoImpl implements EstateBoardDao {

	private static final String namespace="co.kr.mappers.EstateBoardMapper";
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<EstateBoardVO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public EstateBoardVO selectOne(int bno) {
		return session.selectOne(namespace+".selectOne", bno);
	} 

	@Override
	public void insert(EstateBoardVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void updateCnt(int bno) {
		session.update(namespace+".updateCnt", bno);
	}

	@Override
	public void delete(int bno) {
		session.delete(namespace+".delete", bno);
	}

	@Override
	public List<EstateBoardVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);
	}

}
