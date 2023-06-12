/**
*
*  Purpose          :	Helper Class for Trigger on Account object.
*
*  Created Date     :	22/03/2023
*
*  Created By       :	Shreya Sahu
*
*  Revision Logs    :	V_1.0 - Created
*
**/

public class AccountTriggerHandler 
{    
    public static void populateRatingField(List<Account> accList)
    {
        for(Account acc : accList)
        {
            if(acc.Industry != null && acc.Industry == 'Media')
            {
                acc.Rating = 'Hot';
            }
        }
    }
}