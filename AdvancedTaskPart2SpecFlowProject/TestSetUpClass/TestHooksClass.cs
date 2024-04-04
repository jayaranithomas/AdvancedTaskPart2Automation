using AdvancedTaskPart2SpecFlowProject.ReportClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TechTalk.SpecFlow;


namespace AdvancedTaskPart2SpecFlowProject.TestSetUpClass
{
    [Binding]
    public class TestHooksClass
    {
        public static GenerateReport? generateReport;

        [BeforeTestRun]
        public static void BeforeTestRun()
        {
            generateReport = new GenerateReport();
            generateReport?.GenerateExtentReport(@"Reports\ExtentReport.html");
        }

        [AfterTestRun]
        public static void AfterTestRun()
        {
            generateReport?.ExtentReportsCleanup();
        }
    }
   
}
