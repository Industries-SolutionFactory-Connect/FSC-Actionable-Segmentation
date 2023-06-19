from cumulusci.tasks.salesforce import BaseSalesforceApiTask
from simple_salesforce.exceptions import SalesforceMalformedRequest
import json

class CreateInterestTags(BaseSalesforceApiTask):
    task_options = {
        "tags_per_category": {
            "description": "No. of tags per category to create",
            "required": True,
        },
        "tag_name_prefix": {
            "description": "URL prefix for the community.",
            "required": False,
        },
    }

    def _init_options(self, kwargs):
        super()._init_options(kwargs)
        self.options["tag_name_prefix"] = self.options.get("tag_name_prefix", "Tag")

    def _run_task(self):
        # tag_categories = self.sf.restful("sobjects/TagCategory")
        #print(tag_categories)
        payload = ""
        for each_category in self.sf.query("SELECT Id,Name FROM TagCategory")["records"]:
            for i in range(int(self.options["tags_per_category"])):
                if payload == "":
                    payload = "{\"tagDescription\":\"Tag\",\"tagName\":\""+each_category["Name"]+" " +self.options["tag_name_prefix"] +" " +str(i+1)+"\",\"categoryId\":\""+each_category["Id"]+"\"}"
                else:
                    payload = payload +", {\"tagDescription\":\"Tag\",\"tagName\":\""+each_category["Name"]+" " +self.options["tag_name_prefix"] +" " +str(i+1)+"\",\"categoryId\":\""+each_category["Id"]+"\"}"
        payload = "{\"interestTagList\":["+payload+"]}"
        self.logger.info("Sending payload to create InterestTags...")

        try:
            self.sf.restful(
                "connect/interest-tags/tags", method="POST", data=payload
            )
            self.logger.info("InterestTags are created")
        except SalesforceMalformedRequest as e:
            self.logger.info(f"There is an error while creating InterestTags {e}")
            raise