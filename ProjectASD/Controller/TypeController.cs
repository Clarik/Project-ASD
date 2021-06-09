using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectASD.Controller
{
    public class TypeController
    {
        public static string numberCheck(string number)
        {
            double dnum;
            if (!double.TryParse(number, out dnum))
                return "input must a number or decimal";
            return "";
        }

        public static List<string> getWeightList()
        {
            List<string> list = new List<string>();
            list.Add("kilogram (kg)");
            list.Add("hektogram (hg)");
            list.Add("dekagram (dag)");
            list.Add("gram (g)");
            list.Add("desigram (dg)");
            list.Add("sentigram (cg)");
            list.Add("miligram (mg)");
            return list;
        }

        public static List<string> getDistanceList()
        {
            List<string> list = new List<string>();
            list.Add("kilometer (km)");
            list.Add("hektometer (hm)");
            list.Add("dekameter (dam)");
            list.Add("meter (m)");
            list.Add("desimeter (dm)");
            list.Add("sentimeter (cm)");
            list.Add("milimeter (mm)");
            return list;
        }

        public static double calculate(double number, int from, int to)
        {
            return number * Math.Pow(10, to - from);
        }
    }
}