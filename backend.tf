terraform { 
  cloud { 
    
    organization = "Cloudwitch" 

    workspaces { 
      name = "aws-terraform-deploy" 
    } 
  } 
}