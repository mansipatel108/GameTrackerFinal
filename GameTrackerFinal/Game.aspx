<%@ Page Title="Game Tracker" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="GameTrackerFinal.Game" %>

<%--
File Name: Game.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://gametrackerproject.azurewebsites.net/Default.aspx
Description: From this page user can create a tracker for their favourite game's team
 @date: June 8, 2016
 @version: 0.0.1 
 @date: June 15, 2016
 @version: 0.0.2  
--%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section id="services" class="services">
        <div class="services">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h1>Tracker...</h1>
                    <div class="row">
                        <label for="PageSizeDropDownList" id="select-week">Select Week: </label>
                        <asp:DropDownList ID="WeekDropDownList" runat="server"
                            AutoPostBack="true" CssClass="btn btn-default bt-sm dropdown-toggle"
                            OnSelectedIndexChanged="WeekDropDownList_SelectedIndexChanged">
                            <asp:ListItem Text="1" Value="1" />
                            <asp:ListItem Text="2" Value="2" />
                            <asp:ListItem Text="3" Value="3" />
                            <asp:ListItem Text="4" Value="4" />
                            <asp:ListItem Text="5" Value="5" />
                            <asp:ListItem Text="6" Value="6" />
                            <asp:ListItem Text="7" Value="7" />
                            <asp:ListItem Text="8" Value="8" />
                            <asp:ListItem Text="9" Value="9" />
                            <asp:ListItem Text="10" Value="10" />
                            <asp:ListItem Text="11" Value="11" />
                            <asp:ListItem Text="12" Value="12" />
                            <asp:ListItem Text="13" Value="13" />
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                            <asp:ListItem>32</asp:ListItem>
                            <asp:ListItem>33</asp:ListItem>
                            <asp:ListItem>34</asp:ListItem>
                            <asp:ListItem>35</asp:ListItem>
                            <asp:ListItem>36</asp:ListItem>
                            <asp:ListItem>37</asp:ListItem>
                            <asp:ListItem>38</asp:ListItem>
                            <asp:ListItem>39</asp:ListItem>
                            <asp:ListItem>40</asp:ListItem>
                            <asp:ListItem>41</asp:ListItem>
                            <asp:ListItem>42</asp:ListItem>
                            <asp:ListItem>43</asp:ListItem>
                            <asp:ListItem>44</asp:ListItem>
                            <asp:ListItem>45</asp:ListItem>
                            <asp:ListItem>46</asp:ListItem>
                            <asp:ListItem>47</asp:ListItem>
                            <asp:ListItem>48</asp:ListItem>
                            <asp:ListItem>49</asp:ListItem>
                            <asp:ListItem>50</asp:ListItem>
                            <asp:ListItem>51</asp:ListItem>
                            <asp:ListItem>52</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    <br />
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="image">
                                <img src="Assets/Images/baseball1.jpg" width="200" height="200" class="img-thumbnail" />
                            </span>
                            <h4>
                                <strong>BaseBall</strong>
                            </h4>
                            <div>
                                <a class="btn btn-info btn-group-lg" id="BaseBallButton" href="GameDetails.aspx"><i class="fa fa-hand-pointer-o"></i>View</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="image">
                                <img src="Assets/Images/basket.jpg" width="200" height="200" class="img-thumbnail" />
                            </span>
                            <h4>
                                <strong>BasketBall </strong>
                            </h4>
                            <div>
                                <a class="btn btn-info btn-group-lg" id="BasketBallButton" href="GameDetails.aspx"><i class="fa fa-hand-pointer-o"></i>View</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="image">
                                <img src="Assets/Images/hockey1.jpg" width="200" height="200" class="img-thumbnail" />
                            </span>
                            <h4>
                                <strong>Hockey</strong>
                            </h4>
                            <div>
                                <a class="btn btn-info btn-group-lg" id="HockeyButton" href="GameDetails.aspx"><i class="fa fa-hand-pointer-o"></i>View</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="image">
                                <img src="Assets/Images/soccer1.jpg" width="200" height="200" class="img-thumbnail" />

                            </span>
                            <h4>
                                <strong>Soccer</strong>
                            </h4>
                            <div>
                                <a class="btn btn-info btn-group-lg" id="SoccerButton" href="GameDetails.aspx"><i class="fa fa-hand-pointer-o"></i>View</a>
                            </div>
                            <br />
                            <asp:GridView runat="server" ID="WeeklyGame"></asp:GridView>

                        </div>
                    </div>
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.col-lg-10 -->
        </div><!-- /.container -->
    </section>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

