﻿// =================================================================== 
// 业务逻辑（DawnXZ.Dawnauth.BLL）项目
//====================================================================
//【宋杰军 @Copy Right 2008+】--【联系ＱＱ：6808240】--【请保留此注释】
//====================================================================
// 文件名称：DawnAuthLogsBLL.cs
// 项目名称：晨曦小竹权限云管理系统
// 创建时间：2013年02月28日 23:22:07
// 创建人员：宋杰军
// 负 责 人：宋杰军
// ===================================================================
// 修改日期：
// 修改人员：
// 修改内容：
// ===================================================================
using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using DawnXZ.Dawnauth.Entity;
using DawnXZ.Dawnauth.IDAL;
using DawnXZ.Dawnauth.DBFactory;

namespace DawnXZ.Dawnauth.BLL
{
    /// <summary>
    /// 业务逻辑层DawnAuthLogs
    /// </summary>
    public class DawnAuthLogsBLL
    {

        #region ---------变量定义-----------

        ///<summary>
        ///得到数据工厂
        ///</summary>
        private static readonly IDawnAuthLogsDAL _dal = DALFactory.DawnAuthLogsDALInstance();

        #endregion

        #region ----------构造函数----------

        /// <summary>
        /// 构造函数
        /// </summary>
        public DawnAuthLogsBLL()
        { }

        #endregion

        #region ---------函数定义-----------

        #region 添加

        /// <summary>
        /// 向数据表DawnAuthLogs中插入一条新记录
        /// </summary>
        /// <param name="dawnAuthLogs">DawnAuthLogs实体对象</param>
        /// <returns></returns>
        public static int Insert(DawnAuthLogsMDL dawnAuthLogs)
        {
            if (dawnAuthLogs == null)
                return 0;
            return DawnAuthLogsBLL._dal.Insert(dawnAuthLogs);
        }

        #endregion

        #region 删除

        /// <summary>
        /// 删除数据表DawnAuthLogs中的一条记录
        /// </summary>
        /// <param name="logId">系统编号</param>
        /// <returns></returns>
        public static int Delete(Guid logId)
        {
            if (logId == null)
                return 0;
            return DawnAuthLogsBLL._dal.Delete(logId);
        }
        /// <summary>
        /// 根据指定条件删除数据表DawnAuthLogs中的记录
        /// </summary>
        /// <param name="where">删除条件</param>
        /// <returns></returns>
        public static int DeleteWhere(string where)
        {
            return DawnAuthLogsBLL._dal.DeleteWhere(where);
        }
        /// <summary>
        /// 删除数据表DawnAuthLogs中的所有记录
        /// </summary>
        /// <returns></returns>
        public static int DeleteAll()
        {
            return DawnAuthLogsBLL._dal.DeleteAll();
        }

        #endregion

        #region 实体对象

        /// <summary>
        /// 通过DataRow创建一个DawnAuthLogs实体对象
        /// </summary>
        /// <param name="row">row</param>
        /// <returns>DawnAuthLogs实体对象</returns>
        public static DawnAuthLogsMDL Select(DataRow row)
        {
            return DawnAuthLogsBLL._dal.Select(row);
        }
        /// <summary>
        /// 通过DataReader创建一个DawnAuthLogs实体对象
        /// </summary>
        /// <param name="dr">dr</param>
        /// <returns>DawnAuthLogs实体对象</returns>
        public static DawnAuthLogsMDL Select(IDataReader dr)
        {
            return DawnAuthLogsBLL._dal.Select(dr);
        }
        /// <summary>
        /// 根据ID,返回一个DawnAuthLogs实体对象
        /// </summary>
        /// <param name="logId">系统编号</param>
        /// <returns>DawnAuthLogs实体对象</returns>
        public static DawnAuthLogsMDL Select(Guid logId)
        {
            return DawnAuthLogsBLL._dal.Select(logId);
        }

        #endregion

        #region 查询

        #region List

        /// <summary>
        /// 得到数据表DawnAuthLogs所有记录
        /// </summary>
        /// <returns>结果集</returns>
        public static List<DawnAuthLogsMDL> LSelect()
        {
            return DawnAuthLogsBLL._dal.LSelect();
        }
        /// <summary>
        /// 得到数据表DawnAuthLogs所有记录
        /// </summary>
        /// <param name="sortField">排序字段</param>
        /// <returns>结果集</returns>
        public static List<DawnAuthLogsMDL> LSelect(string sortField)
        {
            return DawnAuthLogsBLL._dal.LSelect(sortField);
        }
        /// <summary>
        /// 得到数据表DawnAuthLogs满足查询条件的记录
        /// </summary>
        /// <param name="where">查询条件</param>
        /// <param name="sortField">排序字段</param>
        /// <returns>结果集</returns>
        public static List<DawnAuthLogsMDL> LSelect(string where, string sortField)
        {
            return DawnAuthLogsBLL._dal.LSelect(where, sortField);
        }
        /// <summary>
        /// 得到数据表DawnAuthLogs满足查询条件记录
        /// </summary>
        /// <param name="commandType">命令类型</param>
        /// <param name="sqlCommand">SQL命令</param>
        /// <param name="param">命令参数数组</param>
        /// <returns>结果集</returns>
        public static List<DawnAuthLogsMDL> LSelect(CommandType commandType, string sqlCommand, params SqlParameter[] param)
        {
            return DawnAuthLogsBLL._dal.LSelect(commandType, sqlCommand, param);
        }

        #endregion

        #region IList

        /// <summary>
        /// 得到数据表DawnAuthLogs所有记录
        /// </summary>
        /// <returns>结果集</returns>
        public static IList<DawnAuthLogsMDL> ISelect()
        {
            return DawnAuthLogsBLL._dal.ISelect();
        }
        /// <summary>
        /// 得到数据表DawnAuthLogs所有记录
        /// </summary>
        /// <param name="sortField">排序字段</param>
        /// <returns>结果集</returns>
        public static IList<DawnAuthLogsMDL> ISelect(string sortField)
        {
            return DawnAuthLogsBLL._dal.ISelect(sortField);
        }
        /// <summary>
        /// 得到数据表DawnAuthLogs满足查询条件的记录
        /// </summary>
        /// <param name="where">查询条件</param>
        /// <param name="sortField">排序字段</param>
        /// <returns>结果集</returns>
        public static IList<DawnAuthLogsMDL> ISelect(string where, string sortField)
        {
            return DawnAuthLogsBLL._dal.ISelect(where, sortField);
        }
        /// <summary>
        /// 得到数据表DawnAuthLogs满足查询条件记录
        /// </summary>
        /// <param name="commandType">命令类型</param>
        /// <param name="sqlCommand">SQL命令</param>
        /// <param name="param">命令参数数组</param>
        /// <returns>结果集</returns>
        public static IList<DawnAuthLogsMDL> ISelect(CommandType commandType, string sqlCommand, params SqlParameter[] param)
        {
            return DawnAuthLogsBLL._dal.ISelect(commandType, sqlCommand, param);
        }

        #endregion

        /// <summary>
        /// 得到数据表DawnAuthLogs满足查询条件的记录数
        /// </summary>
        /// <param name="where">查询条件</param>
        /// <param name="recordCount">记录数</param>
        public static void Select(string where, out int recordCount)
        {
            DawnAuthLogsBLL._dal.Select(where, out recordCount);
        }
        /// <summary>
        /// 根据主键检测是否存在该条记录
        /// </summary>
        /// <param name="logId">系统编号</param>
        /// <returns>存在/不存在</returns>
        public static bool Exists(Guid logId)
        {
            return DawnAuthLogsBLL._dal.Exists(logId);
        }
        /// <summary>
        /// 根据指定条件检测是否存在该条记录
        /// </summary>
        /// <param name="where">查询条件</param>
        /// <returns>存在/不存在</returns>
        public static bool Exists(string where)
        {
            return DawnAuthLogsBLL._dal.Exists(where);
        }

        #endregion

        #region 按指定条件分页查询数据（仅用于主键排序）

        /// <summary>
        /// 通过指定条件分页查询数据（仅用于主键排序）
        /// </summary>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="strWhere">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPinPK(int pageSize, int pageIndex, string strWhere, out int pageCount, out int RecordCount)
        {
            return DawnAuthLogsBLL._dal.SelectPSPinPK(pageSize, pageIndex, strWhere, out pageCount, out RecordCount);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（仅用于主键排序）
        /// </summary>
        /// <param name="intTop">最多读取记录数</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="strWhere">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPinPK(int intTop, int pageSize, int pageIndex, string strWhere, out int pageCount, out int RecordCount)
        {
            return DawnAuthLogsBLL._dal.SelectPSPinPK(intTop, pageSize, pageIndex, strWhere, out pageCount, out RecordCount);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（仅用于主键排序）
        /// </summary>
        /// <param name="strField">要查询出的字段列表,*表示全部字段</param>
        /// <param name="intTop">最多读取记录数</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="strWhere">查询条件,不需where</param>
        /// <param name="strSortField">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="strOrderBy">排序,0-顺序,1-倒序</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPinPK(string strField, int intTop, int pageSize, int pageIndex, string strWhere, string strSortField, byte strOrderBy, out int pageCount, out int RecordCount)
        {
            return DawnAuthLogsBLL._dal.SelectPSPinPK(strField, intTop, pageSize, pageIndex, strWhere, strSortField, strOrderBy, out pageCount, out RecordCount);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（仅用于主键排序）
        /// </summary>
        /// <param name="strTable">要显示的表或多个表的连接</param>
        /// <param name="strField">要查询出的字段列表,*表示全部字段</param>
        /// <param name="intTop">最多读取记录数</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="strWhere">查询条件,不需where</param>
        /// <param name="strSortKey">用于排序的主键</param>
        /// <param name="strSortField">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="strOrderBy">排序,0-顺序,1-倒序</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <param name="UsedTime">耗时测试时间差</param>
        /// <param name="strSql">生成的完整SQL语句</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPinPK(string strTable, string strField, int intTop, int pageSize, int pageIndex, string strWhere, string strSortKey, string strSortField, byte strOrderBy, out int pageCount, out int RecordCount, out int UsedTime, out string strSql)
        {
            return DawnAuthLogsBLL._dal.SelectPSPinPK(strTable, strField, intTop, pageSize, pageIndex, strWhere, strSortKey, strSortField, strOrderBy, out pageCount, out RecordCount, out UsedTime, out strSql);
        }

        #endregion

        #region 按指定条件分页查询数据（通用排序方式）

        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·NotIn）
        /// </summary>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="page">要显示那一页的记录</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="Counts">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurpose(int pageSize, int page, string strCondition, out int pageCount, out int Counts)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurpose(pageSize, page, strCondition, out  pageCount, out  Counts);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·NotIn）
        /// </summary>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="page">要显示那一页的记录</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="Counts">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurpose(string fldName, int pageSize, int page, string strCondition, out int pageCount, out int Counts)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurpose(fldName, pageSize, page, strCondition, out  pageCount, out  Counts);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·NotIn）
        /// </summary>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="page">要显示那一页的记录</param>
        /// <param name="fldSort">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="Sort">排序方法，0为升序，1为降序(如果是多字段排列Sort指代最后一个排序字段的排列顺序(最后一个排序字段不加排序标记)--程序传参如：' SortA Asc,SortB Desc,SortC ')</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="Dist">是否添加查询字段的 DISTINCT 默认0不添加/1添加（去掉重复值）</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="Counts">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurpose(string fldName, int pageSize, int page, string fldSort, byte Sort, string strCondition, byte Dist, out int pageCount, out int Counts)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurpose(fldName, pageSize, page, fldSort, Sort, strCondition, Dist, out  pageCount, out  Counts);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·NotIn）
        /// </summary>
        /// <param name="tblName">要显示的表或多个表的连接</param>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="page">要显示那一页的记录</param>
        /// <param name="fldSort">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="Sort">排序方法，0为升序，1为降序(如果是多字段排列Sort指代最后一个排序字段的排列顺序(最后一个排序字段不加排序标记)--程序传参如：' SortA Asc,SortB Desc,SortC ')</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="ID">主表的主键</param>
        /// <param name="Dist">是否添加查询字段的 DISTINCT 默认0不添加/1添加（去掉重复值）</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="Counts">查询到的总记录数</param>
        /// <param name="UsedTime">耗时测试时间差</param>
        /// <param name="strSql">生成的完整SQL语句</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurpose(string tblName, string fldName, int pageSize, int page, string fldSort, byte Sort, string strCondition, string ID, byte Dist, out int pageCount, out int Counts, out int UsedTime, out string strSql)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurpose(tblName, fldName, pageSize, page, fldSort, Sort, strCondition, ID, Dist, out pageCount, out Counts, out UsedTime, out strSql);
        }

        #endregion

        #region 按指定条件分页查询数据（通用排序方式·NotIn）

        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式）
        /// </summary>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="page">要显示那一页的记录</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="Counts">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeNotIn(int pageSize, int page, string strCondition, out int pageCount, out int Counts)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeNotIn(pageSize, page, strCondition, out  pageCount, out  Counts);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式）
        /// </summary>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="page">要显示那一页的记录</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="Counts">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeNotIn(string fldName, int pageSize, int page, string strCondition, out int pageCount, out int Counts)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeNotIn(fldName, pageSize, page, strCondition, out  pageCount, out  Counts);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式）
        /// </summary>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="page">要显示那一页的记录</param>
        /// <param name="fldSort">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="Sort">排序方法，0为升序，1为降序(如果是多字段排列Sort指代最后一个排序字段的排列顺序(最后一个排序字段不加排序标记)--程序传参如：' SortA Asc,SortB Desc,SortC ')</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="Dist">是否添加查询字段的 DISTINCT 默认0不添加/1添加（去掉重复值）</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="Counts">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeNotIn(string fldName, int pageSize, int page, string fldSort, byte Sort, string strCondition, byte Dist, out int pageCount, out int Counts)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeNotIn(fldName, pageSize, page, fldSort, Sort, strCondition, Dist, out  pageCount, out  Counts);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式）
        /// </summary>
        /// <param name="tblName">要显示的表或多个表的连接</param>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="page">要显示那一页的记录</param>
        /// <param name="fldSort">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="Sort">排序方法，0为升序，1为降序(如果是多字段排列Sort指代最后一个排序字段的排列顺序(最后一个排序字段不加排序标记)--程序传参如：' SortA Asc,SortB Desc,SortC ')</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="ID">主表的主键</param>
        /// <param name="Dist">是否添加查询字段的 DISTINCT 默认0不添加/1添加（去掉重复值）</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="Counts">查询到的总记录数</param>
        /// <param name="UsedTime">耗时测试时间差</param>
        /// <param name="strSql">生成的完整SQL语句</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeNotIn(string tblName, string fldName, int pageSize, int page, string fldSort, byte Sort, string strCondition, string ID, byte Dist, out int pageCount, out int Counts, out int UsedTime, out string strSql)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeNotIn(tblName, fldName, pageSize, page, fldSort, Sort, strCondition, ID, Dist, out pageCount, out Counts, out UsedTime, out strSql);
        }

        #endregion

        #region 按指定条件分页查询数据（通用排序方式·ROW_NUMBER）

        #region 不输出SQL执行语句和执行时间

        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·ROW_NUMBER）
        /// </summary>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeRowNumber(int pageSize, int pageIndex, string strCondition, out int pageCount, out int RecordCount)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeRowNumber(pageSize, pageIndex, strCondition, out  pageCount, out  RecordCount);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·ROW_NUMBER）
        /// </summary>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="fldSort">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeRowNumber(int pageSize, int pageIndex, string fldSort, string strCondition, out int pageCount, out int RecordCount)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeRowNumber(pageSize, pageIndex, fldSort, strCondition, out  pageCount, out  RecordCount);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·ROW_NUMBER）
        /// </summary>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeRowNumber(string fldName, int pageSize, int pageIndex, string strCondition, out int pageCount, out int RecordCount)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeRowNumber(fldName, pageSize, pageIndex, strCondition, out  pageCount, out RecordCount);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·ROW_NUMBER）
        /// </summary>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="fldSort">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeRowNumber(string fldName, int pageSize, int pageIndex, string fldSort, string strCondition, out int pageCount, out int RecordCount)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeRowNumber(fldName, pageSize, pageIndex, fldSort, strCondition, out  pageCount, out  RecordCount);
        }

        #endregion

        #region 输出SQL执行语句和执行时间

        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·ROW_NUMBER）
        /// </summary>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <param name="UsedTime">耗时测试时间差</param>
        /// <param name="strSql">生成的完整SQL语句</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeRowNumber(int pageSize, int pageIndex, string strCondition, out int pageCount, out int RecordCount, out int UsedTime, out string strSql)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeRowNumber(pageSize, pageIndex, strCondition, out  pageCount, out  RecordCount, out UsedTime, out strSql);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·ROW_NUMBER）
        /// </summary>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="fldSort">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <param name="UsedTime">耗时测试时间差</param>
        /// <param name="strSql">生成的完整SQL语句</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeRowNumber(int pageSize, int pageIndex, string fldSort, string strCondition, out int pageCount, out int RecordCount, out int UsedTime, out string strSql)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeRowNumber(pageSize, pageIndex, fldSort, strCondition, out  pageCount, out  RecordCount, out UsedTime, out strSql);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·ROW_NUMBER）
        /// </summary>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <param name="UsedTime">耗时测试时间差</param>
        /// <param name="strSql">生成的完整SQL语句</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeRowNumber(string fldName, int pageSize, int pageIndex, string strCondition, out int pageCount, out int RecordCount, out int UsedTime, out string strSql)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeRowNumber(fldName, pageSize, pageIndex, strCondition, out  pageCount, out RecordCount, out UsedTime, out strSql);
        }
        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·ROW_NUMBER）
        /// </summary>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="fldSort">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <param name="UsedTime">耗时测试时间差</param>
        /// <param name="strSql">生成的完整SQL语句</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeRowNumber(string fldName, int pageSize, int pageIndex, string fldSort, string strCondition, out int pageCount, out int RecordCount, out int UsedTime, out string strSql)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeRowNumber(fldName, pageSize, pageIndex, fldSort, strCondition, out  pageCount, out  RecordCount, out UsedTime, out strSql);
        }

        #endregion

        /// <summary>
        /// 通过指定条件分页查询数据（通用排序方式·ROW_NUMBER）
        /// </summary>
        /// <param name="tblName">要显示的表或多个表的连接</param>
        /// <param name="fldName">要查询出的字段列表,*表示全部字段</param>
        /// <param name="pageSize">每页显示的记录个数</param>
        /// <param name="pageIndex">要显示那一页的记录</param>
        /// <param name="fldSort">排序字段列表或条件，如：id desc (多个id desc,dt asc)</param>
        /// <param name="strCondition">查询条件,不需where</param>
        /// <param name="pageCount">查询结果分页后的总页数</param>
        /// <param name="RecordCount">查询到的总记录数</param>
        /// <param name="UsedTime">耗时测试时间差</param>
        /// <param name="strSql">生成的完整SQL语句</param>
        /// <returns>DawnAuthLogs 结果集</returns>
        public static List<DawnAuthLogsMDL> SelectPSPisAllPurposeRowNumber(string tblName, string fldName, int pageSize, int pageIndex, string fldSort, string strCondition, out int pageCount, out int RecordCount, out int UsedTime, out string strSql)
        {
            return DawnAuthLogsBLL._dal.SelectPSPisAllPurposeRowNumber(tblName, fldName, pageSize, pageIndex, fldSort, strCondition, out pageCount, out RecordCount, out UsedTime, out strSql);
        }

        #endregion

        #endregion

    }
}
