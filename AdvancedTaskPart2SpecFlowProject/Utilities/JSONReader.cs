using AdvancedTaskPart2SpecFlowProject.DataModel;
using Newtonsoft.Json;
using RazorEngine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace AdvancedTaskPart2SpecFlowProject.Utilities
{
    public class JSONReader
    {
        public string jsonFilePath;
        public JSONReader()
        {
            jsonFilePath = string.Empty;
        }
        
        public List<ChangePasswordDM> ReadPJsonData()
        {
            using StreamReader reader = new(jsonFilePath);
            var json = reader.ReadToEnd();

            List<ChangePasswordDM> changePasswordList = JsonConvert.DeserializeObject<List<ChangePasswordDM>>(json)!;
            return changePasswordList;
        }
       public List<EducationDM> ReadEJsonData()
        {
            using StreamReader reader = new(jsonFilePath);
            var json = reader.ReadToEnd();

            List<EducationDM> educationList = JsonConvert.DeserializeObject<List<EducationDM>>(json)!;
            return educationList;
        }
        /*public List<ShareSkillsDM> ReadShareJsonData()
        {
            using StreamReader reader = new(jsonFilePath);
            var json = reader.ReadToEnd();

            List<ShareSkillsDM> shareSkillsList = JsonConvert.DeserializeObject<List<ShareSkillsDM>>(json)!;
            return shareSkillsList;
        }
        public List<SearchSkillsDM> ReadSearchSkillsJsonData()
        {
            using StreamReader reader = new(jsonFilePath);
            var json = reader.ReadToEnd();

            List<SearchSkillsDM> searchSkillsList = JsonConvert.DeserializeObject<List<SearchSkillsDM>>(json)!;
            return searchSkillsList;
        }*/
        public List<LoginDM> ReadLoginJsonData()
        {
            using StreamReader reader = new(jsonFilePath);
            var json = reader.ReadToEnd();

            List<LoginDM> loginInfo = JsonConvert.DeserializeObject<List<LoginDM>>(json)!;
            return loginInfo;
        }
        public void SetDataPath(string typeDM)
        {
            string path = Assembly.GetCallingAssembly().Location;
            string actualPath = path.Substring(0, path.LastIndexOf("bin"));
            string projectPath = new Uri(actualPath).LocalPath;

            if (typeDM.Equals("education"))
                jsonFilePath = projectPath + @"TestData\EducationData.json";
            else if (typeDM.Equals("skills"))
                jsonFilePath = projectPath + @"TestData\SkillsData.json";
            else if (typeDM.Equals("shareskills"))
                jsonFilePath = projectPath + @"TestData\ShareSkillsData.json";
            else if (typeDM.Equals("login"))
                jsonFilePath = projectPath + @"TestData\LoginData.json";
            else if (typeDM.Equals("password"))
                jsonFilePath = projectPath + @"TestData\ChangePasswordData.json";
        }
    }
}
