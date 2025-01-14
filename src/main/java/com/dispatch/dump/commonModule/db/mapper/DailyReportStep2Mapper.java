package com.dispatch.dump.commonModule.db.mapper;

import com.dispatch.dump.commonModule.db.dto.DailyReportStep2Main;
import com.dispatch.dump.commonModule.db.dto.DailyReportStep2Sub;


import java.util.List;

public interface DailyReportStep2Mapper {
    

    /* FUNCTION :: 요약 내용보기 */
    List<DailyReportStep2Main> findDailyReportMainByCarSubmitTel(String userId);
    DailyReportStep2Sub findDailyReportMainBySheetID2(long sheetID2);

}
