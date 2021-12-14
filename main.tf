

# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am a template. I was passed the following value: $${sample_var}"

  vars = {
    sample_var = var.sample_var
  }
}

module "tf_module_test" {
  //source = "https://cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/catalogs/b339e42a-44d3-472f-be3d-7b66a08ba67f/offerings/893dcc32-b6dc-41f7-858f-af905e20e993/source?archive=tgz&kind=terraform&version=1.5.4"
  // source = "https://schematics.test.cloud.ibm.com/v1/workspaces"
 // source = "https://cm.globalcatalog.cloud.ibm.com/api/v1-beta/offering/source?archive=tgz&catalogID=6bcd5f68-4671-4461-bb3e-a75aeb10da3f&name=GoldenEye-acl-profile-ocp&version=^1.0.13"
 source = "https://dev-cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/catalogs/54b7df75-df03-44dc-95c5-06822d514035/offerings/08a3aaab-54af-48e9-8285-b34451c7cc2b/source?archive=tgz&kind=terraform&version=0.0.1"
 //module_sample_var = "************** ${var.sample_var} ********** "
}
  
  
 

