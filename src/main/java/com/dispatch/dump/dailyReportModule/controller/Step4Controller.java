package com.dispatch.dump.dailyReportModule.controller;

import com.dispatch.dump.commonModule.db.dto.DailyReport;
import com.dispatch.dump.dailyReportModule.service.DailyReportService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/dailyReport")
@RequiredArgsConstructor
public class Step4Controller {

    private final DailyReportService dailyReportService;


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String step4(Model model, DailyReport dailyReport) {
        dailyReportService.list(model, dailyReport);
        return "/dailyReport/step4/list";
    }

}
