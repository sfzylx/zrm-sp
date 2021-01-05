function date_translator(input, seg)
    if (input == "dqrq") then
       --- Candidate(type, start, end, text, comment)
	   Year = os.date("%Y年%m月%d日"):gsub("月0","月")
	   Year = Year:gsub("年0","年")
       yield(Candidate("date", seg.start, seg._end, Year, "日期"))
       yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), "日期"))
    end
    if (input == "dqsj") then
       --- Candidate(type, start, end, text, comment)
       yield(Candidate("date", seg.start, seg._end, os.date("%H:%M"), "时间"))
       yield(Candidate("date", seg.start, seg._end, os.date("%H:%M:%S"), "时间"))
    end
    if (input == "datetime") then
       --- Candidate(type, start, end, text, comment)
       yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d %H:%M:%S"), "日期时间"))
    end
 end