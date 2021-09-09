﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré par un outil.
//     Version du runtime :4.0.30319.42000
//
//     Les modifications apportées à ce fichier peuvent provoquer un comportement incorrect et seront perdues si
//     le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Gestion_RH
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="EMP")]
	public partial class DataClasses1DataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Définitions de méthodes d'extensibilité
    partial void OnCreated();
    partial void InsertTable_emp(Table_emp instance);
    partial void UpdateTable_emp(Table_emp instance);
    partial void DeleteTable_emp(Table_emp instance);
    #endregion
		
		public DataClasses1DataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["EMPConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Table_emp> Table_emp
		{
			get
			{
				return this.GetTable<Table_emp>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Table_emp")]
	public partial class Table_emp : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _matricule;
		
		private string _nom;
		
		private string _prénom;
		
		private System.Nullable<System.DateTime> _datenaissance;
		
    #region Définitions de méthodes d'extensibilité
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnmatriculeChanging(string value);
    partial void OnmatriculeChanged();
    partial void OnnomChanging(string value);
    partial void OnnomChanged();
    partial void OnprénomChanging(string value);
    partial void OnprénomChanged();
    partial void OndatenaissanceChanging(System.Nullable<System.DateTime> value);
    partial void OndatenaissanceChanged();
    #endregion
		
		public Table_emp()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_matricule", DbType="VarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string matricule
		{
			get
			{
				return this._matricule;
			}
			set
			{
				if ((this._matricule != value))
				{
					this.OnmatriculeChanging(value);
					this.SendPropertyChanging();
					this._matricule = value;
					this.SendPropertyChanged("matricule");
					this.OnmatriculeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nom", DbType="VarChar(50)")]
		public string nom
		{
			get
			{
				return this._nom;
			}
			set
			{
				if ((this._nom != value))
				{
					this.OnnomChanging(value);
					this.SendPropertyChanging();
					this._nom = value;
					this.SendPropertyChanged("nom");
					this.OnnomChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_prénom", DbType="VarChar(50)")]
		public string prénom
		{
			get
			{
				return this._prénom;
			}
			set
			{
				if ((this._prénom != value))
				{
					this.OnprénomChanging(value);
					this.SendPropertyChanging();
					this._prénom = value;
					this.SendPropertyChanged("prénom");
					this.OnprénomChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_datenaissance", DbType="Date")]
		public System.Nullable<System.DateTime> datenaissance
		{
			get
			{
				return this._datenaissance;
			}
			set
			{
				if ((this._datenaissance != value))
				{
					this.OndatenaissanceChanging(value);
					this.SendPropertyChanging();
					this._datenaissance = value;
					this.SendPropertyChanged("datenaissance");
					this.OndatenaissanceChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591