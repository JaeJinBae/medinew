package co.kr.persistence;

import java.util.List;

import co.kr.domain.EstateBoardVO;
import co.kr.domain.SearchCriteria;

public interface EstateBoardDao {
	public List<EstateBoardVO> selectAll();
	public EstateBoardVO selectOne(int bno);
	public List<EstateBoardVO> selectByNew();
	public List<EstateBoardVO> selectByHot();
	public void insert(EstateBoardVO vo);
	public void updateCnt(int bno);
	public void delete(int bno);
	public List<EstateBoardVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
