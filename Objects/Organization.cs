﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NewPlatform.DigitalSubscription
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET;
    
    
    //  *** Start programmer edit section *** (Using statements)

    //  *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Organization.
    /// </summary>
    //  *** Start programmer edit section *** (Organization CustomAttributes)

    //  *** End programmer edit section *** (Organization CustomAttributes)
    [PublishName("Organization")]
    [AutoAltered()]
    [Caption("Организация")]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("OrganizationE", new string[] {
            "Name as \'Название\'",
            "Address as \'Адрес\'"})]
    [AssociatedDetailViewAttribute("OrganizationE", "Employees", "EmployeeInOrganizationE", true, "", "Сотрудники", true, new string[] {
            ""})]
    [AssociatedDetailViewAttribute("OrganizationE", "Service", "ServiceE", true, "", "Услуги", true, new string[] {
            ""})]
    [View("OrganizationL", new string[] {
            "Name as \'Название\'",
            "Address as \'Адрес\'"})]
    public class Organization : ICSSoft.STORMNET.DataObject
    {
        
        private string fName;
        
        private string fAddress;
        
        private NewPlatform.DigitalSubscription.DetailArrayOfService fService;
        
        private NewPlatform.DigitalSubscription.DetailArrayOfEmployeeInOrganization fEmployees;
        
        //  *** Start programmer edit section *** (Organization CustomMembers)

        //  *** End programmer edit section *** (Organization CustomMembers)

        
        /// <summary>
        /// Название.
        /// </summary>
        //  *** Start programmer edit section *** (Organization.Name CustomAttributes)

        //  *** End programmer edit section *** (Organization.Name CustomAttributes)
        [StrLen(255)]
        [NotNull()]
        public virtual string Name
        {
            get
            {
                //  *** Start programmer edit section *** (Organization.Name Get start)

                //  *** End programmer edit section *** (Organization.Name Get start)
                string result = this.fName;
                //  *** Start programmer edit section *** (Organization.Name Get end)

                //  *** End programmer edit section *** (Organization.Name Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (Organization.Name Set start)

                //  *** End programmer edit section *** (Organization.Name Set start)
                this.fName = value;
                //  *** Start programmer edit section *** (Organization.Name Set end)

                //  *** End programmer edit section *** (Organization.Name Set end)
            }
        }
        
        /// <summary>
        /// Адрес.
        /// </summary>
        //  *** Start programmer edit section *** (Organization.Address CustomAttributes)

        //  *** End programmer edit section *** (Organization.Address CustomAttributes)
        [StrLen(255)]
        public virtual string Address
        {
            get
            {
                //  *** Start programmer edit section *** (Organization.Address Get start)

                //  *** End programmer edit section *** (Organization.Address Get start)
                string result = this.fAddress;
                //  *** Start programmer edit section *** (Organization.Address Get end)

                //  *** End programmer edit section *** (Organization.Address Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (Organization.Address Set start)

                //  *** End programmer edit section *** (Organization.Address Set start)
                this.fAddress = value;
                //  *** Start programmer edit section *** (Organization.Address Set end)

                //  *** End programmer edit section *** (Organization.Address Set end)
            }
        }
        
        /// <summary>
        /// Organization.
        /// </summary>
        //  *** Start programmer edit section *** (Organization.Service CustomAttributes)

        //  *** End programmer edit section *** (Organization.Service CustomAttributes)
        public virtual NewPlatform.DigitalSubscription.DetailArrayOfService Service
        {
            get
            {
                //  *** Start programmer edit section *** (Organization.Service Get start)

                //  *** End programmer edit section *** (Organization.Service Get start)
                if ((this.fService == null))
                {
                    this.fService = new NewPlatform.DigitalSubscription.DetailArrayOfService(this);
                }
                NewPlatform.DigitalSubscription.DetailArrayOfService result = this.fService;
                //  *** Start programmer edit section *** (Organization.Service Get end)

                //  *** End programmer edit section *** (Organization.Service Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (Organization.Service Set start)

                //  *** End programmer edit section *** (Organization.Service Set start)
                this.fService = value;
                //  *** Start programmer edit section *** (Organization.Service Set end)

                //  *** End programmer edit section *** (Organization.Service Set end)
            }
        }
        
        /// <summary>
        /// Organization.
        /// </summary>
        //  *** Start programmer edit section *** (Organization.Employees CustomAttributes)

        //  *** End programmer edit section *** (Organization.Employees CustomAttributes)
        public virtual NewPlatform.DigitalSubscription.DetailArrayOfEmployeeInOrganization Employees
        {
            get
            {
                //  *** Start programmer edit section *** (Organization.Employees Get start)

                //  *** End programmer edit section *** (Organization.Employees Get start)
                if ((this.fEmployees == null))
                {
                    this.fEmployees = new NewPlatform.DigitalSubscription.DetailArrayOfEmployeeInOrganization(this);
                }
                NewPlatform.DigitalSubscription.DetailArrayOfEmployeeInOrganization result = this.fEmployees;
                //  *** Start programmer edit section *** (Organization.Employees Get end)

                //  *** End programmer edit section *** (Organization.Employees Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (Organization.Employees Set start)

                //  *** End programmer edit section *** (Organization.Employees Set start)
                this.fEmployees = value;
                //  *** Start programmer edit section *** (Organization.Employees Set end)

                //  *** End programmer edit section *** (Organization.Employees Set end)
            }
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "OrganizationE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View OrganizationE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("OrganizationE", typeof(NewPlatform.DigitalSubscription.Organization));
                }
            }
            
            /// <summary>
            /// "OrganizationL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View OrganizationL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("OrganizationL", typeof(NewPlatform.DigitalSubscription.Organization));
                }
            }
        }
    }
}
