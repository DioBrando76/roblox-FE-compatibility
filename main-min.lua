if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
local Player,Mouse,mouse,UserInputService,ContextActionService = owner
do print("FE Compatibility code by Mokiros")script.Parent=Player.Character;local a=Instance.new("RemoteEvent")a.Name="UserInput_Event"local function b()local c={_fakeEvent=true,Connect=function(self,d)self.Function=d end}c.connect=c.Connect;return c end;local e={Target=nil,Hit=CFrame.new(),KeyUp=b(),KeyDown=b(),Button1Up=b(),Button1Down=b()}local f={InputBegan=b(),InputEnded=b()}local CAS={Actions={},BindAction=function(self,g,h,i,...)CAS.Actions[g]=h and{Name=g,Function=h,Keys={...}}or nil end}CAS.UnbindAction=CAS.BindAction;local function j(self,k,...)local c=e[k]if c and c._fakeEvent and c.Function then c.Function(...)end end;e.TrigEvent=j;f.TrigEvent=j;a.OnServerEvent:Connect(function(l,m)if l~=Player then return end;e.Target=m.Target;e.Hit=m.Hit;if not m.isMouse then local n=m.UserInputState==Enum.UserInputState.Begin;if m.UserInputType==Enum.UserInputType.MouseButton1 then return e:TrigEvent(n and"Button1Down"or"Button1Up")end;for o,c in pairs(CAS.Actions)do for o,p in pairs(c.Keys)do if p==m.KeyCode then c.Function(c.Name,m.UserInputState,m)end end end;e:TrigEvent(n and"KeyDown"or"KeyUp",m.KeyCode.Name:lower())f:TrigEvent(n and"InputBegan"or"InputEnded",m,false)end end)a.Parent=NLS([==[local a=game:GetService("Players").LocalPlayer;local b=script:WaitForChild("UserInput_Event")local c=a:GetMouse()local d=game:GetService("UserInputService")local e=function(f,g)if g then return end;b:FireServer({KeyCode=f.KeyCode,UserInputType=f.UserInputType,UserInputState=f.UserInputState,Hit=c.Hit,Target=c.Target})end;d.InputBegan:Connect(e)d.InputEnded:Connect(e)local h,i;while wait(1/30)do if h~=c.Hit or i~=c.Target then h,i=c.Hit,c.Target;b:FireServer({isMouse=true,Target=i,Hit=h})end end]==],Player.Character)local q=game;local function r(c,s)c._RealService=typeof(s)=="string"and q:GetService(s)or s;return setmetatable(c,{__index=function(self,p)local t=rawget(self,"_RealService")if t then return t[p]end end,__newindex=function(self,p,u)local t=rawget(self,"_RealService")if t then t[p]=u end end})end;local v=r({GetService=function(self,t)return self[t]end,Players=r({LocalPlayer=r({GetMouse=function(self)return e end},owner)},"Players"),UserInputService=r(f,"UserInputService"),ContextActionService=r(CAS,"ContextActionService")},game)getmetatable(v).__index=function(self,t)return q:GetService(t)or typeof(q[t])=="function"and function(o,...)return q[t](q,...)end or q[t]end;game=v;owner=v.Players.LocalPlayer end