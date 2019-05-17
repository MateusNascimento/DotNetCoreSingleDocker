using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace DotNetCoreSingleDocker.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TesteController : ControllerBase
    {
        // GET api/teste
        [HttpGet]
        public ActionResult<string> Get()
        {
            return "Hello world!";
        }
    }
}
