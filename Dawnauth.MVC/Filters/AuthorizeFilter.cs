﻿using System;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using DawnXZ.Dawnauth.Handler;

namespace DawnXZ.Dawnauth.MVC.Filters
{
    /// <summary>
    /// 权限验证过滤器
    /// </summary>
    public class AuthorizeFilter : AuthorizeAttribute
    {

        #region 成员属性

        /// <summary>
        /// 消息提示模式
        /// <para>1 正常窗体模式</para>
        /// <para>2 弹出窗体模式</para>
        /// <para>3 字符串内容模式</para>
        /// </summary>
        public byte TipsMode { get; private set; }
        /// <summary>
        /// 模块编码
        /// </summary>
        public string ModuleCode { get; private set; }
        /// <summary>
        /// 功能标识
        /// </summary>
        public int FunctionMark { get; private set; }

        #endregion

        #region 构造函数

        /// <summary>
        /// 构造函数
        /// <para>是否登录验证</para>
        /// </summary>
        /// <param name="tipsMode">
        /// 消息提示模式
        /// <para>1 正常窗体模式</para>
        /// <para>2 弹出窗体模式</para>
        /// <para>3 字符串内容模式</para>
        /// </param>
        /// <param name="seqOrder">执行次序</param>
        public AuthorizeFilter(byte tipsMode = 1, int seqOrder = 9999)
        {
            TipsMode = tipsMode;
            Order = seqOrder;
        }
        /// <summary>
        /// 构造函数
        /// <para>模块访问验证</para>
        /// </summary>
        /// <param name="moduleCode">模块编码</param>
        /// <param name="functionMark">功能标识</param>
        /// <param name="tipsMode">
        /// 消息提示模式
        /// <para>1 正常窗体模式</para>
        /// <para>2 弹出窗体模式</para>
        /// <para>3 字符串内容模式</para>
        /// </param>
        /// <param name="seqOrder">执行次序</param>
        public AuthorizeFilter(string moduleCode, int functionMark, byte tipsMode = 1, int seqOrder = 255)
        {
            TipsMode = tipsMode;
            Order = seqOrder;
            ModuleCode = moduleCode;
            FunctionMark = functionMark;
        }

        #endregion

        #region 成员方法

        /// <summary>
        /// 验证授权
        /// </summary>
        /// <returns>执行结果</returns>
        private bool IsAllow()
        {
            return DawnauthHandler.VerifyModule(ModuleCode, FunctionMark);
        }

        #endregion

        #region 成员重写方法

        /// <summary>
        /// 自定义授权检查
        /// </summary>
        /// <param name="httpContext">
        /// <para>HTTP 上下文</para>
        /// <para>封装有关单个 HTTP 请求的所有 HTTP 特定的信息</para>
        /// </param>
        /// <returns>执行结果</returns>
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            //return base.AuthorizeCore(httpContext);
            if (httpContext == null) return false;
            if (httpContext.User.Identity.IsAuthenticated) {
                if (!string.IsNullOrEmpty(DawnauthHandler.UserName) || DawnauthHandler.UserInfo != null) {
                    if (!string.IsNullOrEmpty(ModuleCode) && FunctionMark > 0) {
                        if (IsAllow() && base.AuthorizeCore(httpContext)) {
                            return true;
                        }
                        httpContext.Response.StatusCode = 403;
                    }
                    else {
                        return true;
                    }
                }
                else {
                    DawnauthHandler.ClearLogin();
                    httpContext.Response.StatusCode = 401;
                }
            }
            return false;
        }
        /// <summary>
        /// 处理未能授权的 HTTP 请求
        /// </summary>
        /// <param name="filterContext">
        /// <para>控制器</para>
        /// <para>HTTP 上下文</para>
        /// <para>请求上下文</para>
        /// <para>操作结果</para>
        /// <para>路由数据</para>
        /// </param>
        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {
            base.HandleUnauthorizedRequest(filterContext);
        }
        /// <summary>
        /// 在过程请求授权时调用
        /// </summary>
        /// <param name="filterContext">
        /// <para>筛选器上下文</para>
        /// <para>封装有关使用 System.Web.Mvc.AuthorizeAttribute 的信息</para>
        /// </param>
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            base.OnAuthorization(filterContext);
            if (filterContext.HttpContext.Response.StatusCode == 401) {
                filterContext.Result = new RedirectToRouteResult("Default", new RouteValueDictionary(new { controller = "Auth", action = "Login" }));
            }
            else if (filterContext.HttpContext.Response.StatusCode == 403) {
                var result = "Login";
                if (filterContext.HttpContext.User.Identity.IsAuthenticated) {
                    switch (TipsMode) {
                        case 1:
                            result = "AuthBody";
                            break;
                        case 2:
                            result = "AuthDialog";
                            break;
                        case 3:
                            result = "AuthContent";
                            break;
                    }
                }
                filterContext.Result = new RedirectToRouteResult("Default", new RouteValueDictionary(new { controller = "Auth", action = result }));
            }
        }
        /// <summary>
        /// 在缓存模块请求授权时调用
        /// </summary>
        /// <param name="httpContext">
        /// <para>HTTP 上下文</para>
        /// <para>封装有关单个 HTTP 请求的所有 HTTP 特定的信息</para>
        /// </param>
        /// <returns>对验证状态的引用</returns>
        protected override HttpValidationStatus OnCacheAuthorization(HttpContextBase httpContext)
        {
            return base.OnCacheAuthorization(httpContext);
        }

        #endregion

    }
}