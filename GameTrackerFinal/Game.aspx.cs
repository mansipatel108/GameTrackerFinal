using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameTrackerFinal.Model;
using System.Globalization;
using System.Web.ModelBinding;
namespace GameTrackerFinal
{
    public partial class Game : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!IsPostBack) && (Request.QueryString.Count > 0))
            {
                // Get the game data
                this.GetGames();
            }
        }
        /**
               * <summary>
               * This method gets the game data from the DB
               * </summary>
               * 
               * @method GetGames
               * @returns {void}
               */
        protected void GetGames()
        {
            // connect to EF
            using (GameConnection db = new GameConnection())
            {
                int Week = Convert.ToInt32(Request.QueryString["weeks"]);

                // query the Games Table using EF and LINQ
                var Games = (from allGames in db.Game_info
                         .Where (Game_info=>Game_info.weeks == Calendar1.SelectedDate)
                         select allGames);



                // bind the result to the GridView
                WeeklyGamesGridView.DataSource = Games.AsQueryable().ToList();
                WeeklyGamesGridView.DataBind();
            }
        }

        protected void WeekDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private static int WeekOfYear(DateTime date)
        {
            var day = (int)CultureInfo.CurrentCulture.Calendar.GetDayOfWeek(date);
            return CultureInfo.CurrentCulture.Calendar.GetWeekOfYear(date.AddDays(4 - (day == 0 ? 7 : day)), CalendarWeekRule.FirstFourDayWeek, DayOfWeek.Monday);
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            WeekTextBox.Text = Convert.ToString(WeekOfYear(Calendar1.SelectedDate));

                
        }

        protected void WeeklyGamesGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}