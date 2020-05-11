using MDashboard.Tests.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace MDashboard.Tests.Controllers
{
    [TestClass]
    public class WhenGettingLookupData
    {
        [TestMethod]
        public void TestGetLookupData()
        {
            var lookupData = ControllerFactory.LookupController.GetLookupData().Value;
            Assert.IsNotNull(lookupData);
            Assert.AreNotEqual(0, lookupData.Titles);
        }
    }
}
