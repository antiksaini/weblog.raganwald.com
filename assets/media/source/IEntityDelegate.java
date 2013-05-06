
/**
 * IEntityDelegate.java
 *
 * Generated by delegate-interfaces.xsl and xalan
 *
 * DO NOT MODIFY BY HAND!!!
 *
 * This code is licensed under a Creative Commons License: http://creativecommons.org/licenses/by-sa/1.0/
 *
 */

package com.braithwaite-lee.delegate;


import com.braithwaite-lee.form.TabViewDispatchElectionForm;
import com.braithwaite-lee.form.EntityGeneralForm;
import com.braithwaite-lee.form.TabViewDispatchElectionForm;
import com.braithwaite-lee.form.EntityPersonalInfoForm;
import com.braithwaite-lee.form.EntityPersonalInfoForm;
import com.braithwaite-lee.form.EntityPersonalInfoForm;
import com.braithwaite-lee.form.EntityPersonalInfoForm;
import com.braithwaite-lee.form.EntityPersonalInfoForm;
import javax.servlet.http.HttpServletRequest;

interface IEntityDelegate {


EntityGeneralForm handleActionEntityDetailsGeneralTab (
        TabViewDispatchElectionForm requestForm,
        HttpServletRequest request
    )
throws Exception;
        
EntityPersonalInfoForm handleActionEntityDetailsGeneralTabUpdatePersonalInformation (
        TabViewDispatchElectionForm requestForm,
        HttpServletRequest request
    )
throws Exception;
        
EntityPersonalInfoForm handleActionEntityDetailsUpdatePersonalInfoSave (
        EntityPersonalInfoForm requestForm,
        HttpServletRequest request
    )
throws Exception;
        
EntityPersonalInfoForm handleActionEntityDetailsUpdatePersonalInfoSaveAndCompleteWorkItem (
        EntityPersonalInfoForm requestForm,
        HttpServletRequest request
    )
throws Exception;
        
}
        